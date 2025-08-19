#include <iostream>
#include <string>
#include <cstdlib>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <cstring>
#include <vector>
#include <sys/wait.h>
#include <sstream>
#include <fstream>

int runCommand(const std::string& command, bool silent = false)
{
    std::string full_command = command;
    if (silent)
    {
        full_command += " > /dev/null 2>&1";
    }
    int result = system(full_command.c_str());
    return result;
}

void compileProgram(const std::string& build_directory)
{
    std::string build = "mkdir -p " + build_directory;
    runCommand(build, true);

    std::string cmake = "cmake -S . -B " + build_directory;
    if (runCommand(cmake, true) != 0)
    {
        throw std::runtime_error("CMake failed!\n");
    }

    std::string make = "make -C " + build_directory;
    if (runCommand(make, true) != 0)
    {
        throw std::runtime_error("Make failed!\n");
    }
}

void destroyPipe(const std::string& pipe, int rank) 
{
    auto c2p = pipe + "_c2p_" + std::to_string(rank) + ".msg";
    auto p2c = pipe + "_p2c_" + std::to_string(rank) + ".msg";

    unlink(c2p.c_str());
    unlink(p2c.c_str());
}

int readPipe(const std::string& pipe, int rank)
{
    std::string path = pipe + "_c2p_" + std::to_string(rank) + ".msg";

    for (;;)
    {
        int fd = open(path.c_str(), O_RDONLY);
        if (fd >= 0)
        {
            int val = 0;
            ssize_t got = 0;
            char* p = reinterpret_cast<char*>(&val);
            size_t n = sizeof(int);
            while (n > 0)
            {
                ssize_t k = read(fd, p + got, n);
                if (k <= 0) {close(fd); unlink(path.c_str()); throw std::runtime_error("PARENT: read() failed!\n");}
                got += k; n -= size_t(k);
            }
            close(fd);
            unlink(path.c_str());
            return val;
        }
        if (errno != ENOENT)
        {
            throw std::runtime_error("PARENT: open(mailbox) failed!\n");
        }
        usleep(2000);
    }
}

void writePipe(const std::string& pipe, int value, int rank)
{
    std::string dst = pipe + "_p2c_" + std::to_string(rank) + ".msg";
    std::string tmp = dst + ".tmp." + std::to_string(getpid());

    while (access(dst.c_str(), F_OK) == 0)
    {
        usleep(2000);
    }

    int fd = open(tmp.c_str(), O_WRONLY | O_CREAT | O_TRUNC, 0666);
    if (fd == -1)
    {
        throw std::runtime_error("PARENT: open(tmp) failed for writing!\n");
    }

    const char* p = reinterpret_cast<const char*>(&value);
    size_t n = sizeof(int);
    while (n > 0)
    {
        ssize_t k = write(fd, p, n);
        if (k <= 0)
        {
            int err = errno; close(fd); unlink(tmp.c_str());
            throw std::runtime_error(std::string("PARENT: write() failed: ") + std::strerror(err) + "\n");
        }
        p += k; n -= size_t(k);
    }

    if (fsync(fd) != 0)
    {
        int err = errno; close(fd); unlink(tmp.c_str());
        throw std::runtime_error(std::string("PARENT: fsync() failed: ") + std::strerror(err) + "\n");
    }
    close(fd);

    while (access(dst.c_str(), F_OK) == 0)
    {
        usleep(2000);
    }
    if (rename(tmp.c_str(), dst.c_str()) != 0)
    {
        int err = errno; unlink(tmp.c_str());
        throw std::runtime_error(std::string("PARENT: rename() failed: ") + std::strerror(err) + "\n");
    }
}

void modifyCMakeLists(bool matrixSpecificCompilation, std::string X)
{
    std::string filename = "CMakeLists.txt";
    std::ifstream infile(filename.c_str());
    if (!infile)
    {
        throw std::runtime_error("Cannot open " + filename + " for reading!");
    }

    std::vector<std::string> lines;
    std::string line;
    while (std::getline(infile, line))
    {
        lines.push_back(line);
    }
    infile.close();

    const std::string marker = "### MATRIX SPECIFIC COMPILATION (SHOULD NEVER BE MODIFIED)";

    int startIdx = -1;
    int endIdx = -1;
    for (size_t i = 0; i < lines.size(); ++i)
    {
        if (lines[i].find(marker) != std::string::npos)
        {
            if (startIdx == -1)
            {
                startIdx = static_cast<int>(i);
            }
            else
            {
                endIdx = static_cast<int>(i);
                break;
            }
        }
    }

    if (startIdx == -1 || endIdx == -1)
    {
        throw std::runtime_error("Please never modify the matrix-specific compilation part of the CMakeLists.txt file!");
    }

    std::vector<std::string> replacement;
    replacement.push_back(marker);

    if (matrixSpecificCompilation)
    {
        replacement.push_back("add_compile_definitions(SPECIFIC=REGISTERS" + X + ")");
        replacement.push_back("add_compile_definitions(NOV=" + X + ")");
        replacement.push_back("add_definitions(-DMAT_SPECIFIC_COMPILATION)");
    }
    else
    {
        replacement.push_back("add_compile_definitions(SPECIFIC=REGISTERS40)");
        replacement.push_back("add_compile_definitions(NOV=40)");
        replacement.push_back("# add_definitions(-DMAT_SPECIFIC_COMPILATION)");
    }

    replacement.push_back(marker);

    lines.erase(lines.begin() + startIdx, lines.begin() + endIdx + 1);
    lines.insert(lines.begin() + startIdx, replacement.begin(), replacement.end());

    std::ofstream outfile(filename);
    if (!outfile)
    {
        throw std::runtime_error("Cannot open " + filename + " for writing!");
    }
    for (const auto& l: lines)
    {
        outfile << l << "\n";
    }
    outfile.close();
}

int main(int argc, char* argv[]) 
{
    if (argc < 6)
    {
        throw std::runtime_error("Too few arguments passed to wrapper.cpp than what is required!\n");
    }

    int processorNumber = std::stoi(argv[1]);
    std::string buildDir = argv[2];
    std::string matrixSpecificCompilation = argv[3];
    std::string matrixSpecificSize;
    int arg_offset = 4;
    const std::string pipe = buildDir + "wrapper_pipe";

    if (matrixSpecificCompilation == "true")
    {
        matrixSpecificSize = argv[4];
        arg_offset = 5;
        modifyCMakeLists(true, matrixSpecificSize);
    }
    else
    {
        modifyCMakeLists(false, matrixSpecificSize);
    }

    std::string programPath = buildDir + "SUPerman";
    std::string arguments;
    for (int i = arg_offset; i < argc; ++i)
    {
        arguments += std::string(argv[i]) + ' ';
    }
    if (!arguments.empty()) arguments.pop_back();

    std::cout << "************SUPERMAN IS BEING COMPILED************" << std::endl;
    compileProgram(buildDir);

    for (int i = 0; i < processorNumber; ++i)
    {
        destroyPipe(pipe, i);
    }
    
    pid_t first_pid = fork();
    if (first_pid == 0)
    {
        // 1-Child
        std::string firstProgramArguments = programPath + " pid=1 " + arguments;
        if (processorNumber > 1)
        {
            firstProgramArguments = "mpirun --mca btl ^openib -np " + std::to_string(processorNumber) + " " + firstProgramArguments;
        }
        if (runCommand(firstProgramArguments.c_str()) != 0)
        {
            throw std::runtime_error("SUPerman could not be executed!");
        }
        return 0;
    } 
    else if (first_pid > 0) 
    {
        // 1-Parent
        int recompilationNeeded;
        for (int i = 0; i < processorNumber; ++i)
        {
            recompilationNeeded = readPipe(pipe, i);
        }
        if (recompilationNeeded == 1)
        {
            int k;
            for (int i = 0; i < processorNumber; ++i)
            {
                k = readPipe(pipe, i);
            }
            int status;
            waitpid(first_pid, &status, 0);
            std::cout << "************KERNELS ARE BEING COMPILED************" << std::endl;
            compileProgram(buildDir);

            pid_t second_pid = fork();
            if (second_pid == 0)
            {
                // 2-Child
                std::string secondProgramArguments = programPath + " pid=2 " + arguments;
                if (processorNumber > 1)
                {
                    secondProgramArguments = "mpirun --mca btl ^openib -np " + std::to_string(processorNumber) + " " + secondProgramArguments;
                }
                if (runCommand(secondProgramArguments.c_str()) != 0)
                {
                    throw std::runtime_error("SUPerman could not be executed!");
                }
                return 0;
            }
            else if (second_pid > 0)
            {
                // 2-Parent
                for (int i = 0; i < processorNumber; ++i)
                {
                    writePipe(pipe, k, i);
                }
                waitpid(second_pid, &status, 0);
            }
            else
            {
                throw std::runtime_error("Second fork failed!\n");
            }
        }
        int status;
        waitpid(first_pid, &status, 0);
        for (int i = 0; i < processorNumber; ++i)
        {
            destroyPipe(pipe, i);
        }
    }
    else
    {
        throw std::runtime_error("First fork failed!\n");
    }

    return 0;
}
