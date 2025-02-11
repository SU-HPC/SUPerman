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

#define PIPE_NAME "/tmp/wrapper_pipe"


int runCommand(const std::string& command, bool silent = 0)
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
    std::string build_command = "mkdir -p " + build_directory;
    runCommand(build_command, 1);

    std::string cmake_command = "cmake -S . -B " + build_directory;
    if (runCommand(cmake_command, 1) != 0)
    {
        throw std::runtime_error("CMake failed!\n");
    }

    std::string make_command = "make -C " + build_directory + " -j 4";
    if (runCommand(make_command, 1) != 0)
    {
        throw std::runtime_error("Make failed!\n");
    }
}

int readPipe(int rank)
{
    std::string pipeName = std::string(PIPE_NAME) + '_' + std::to_string(rank);
    int fd = open(pipeName.c_str(), O_RDONLY);
    if (fd == -1)
    {
        throw std::runtime_error("PARENT: Failed to open pipe for reading!\n");
    }

    int val;
    if (read(fd, &val, sizeof(int)) != sizeof(int))
    {
        throw std::runtime_error("PARENT: Failed to read integer from pipe!\n");
    }

    close(fd);
    return val;
}

void writePipe(int value, int rank)
{
    std::string pipeName = std::string(PIPE_NAME) + '_' + std::to_string(rank);
    int fd = open(pipeName.c_str(), O_WRONLY);
    if (fd == -1)
    {
        throw std::runtime_error("PARENT: Failed to open pipe for writing!\n");
    }

    if (write(fd, &value, sizeof(int)) != sizeof(int))
    {
        throw std::runtime_error("PARENT: Failed to write integer to pipe!\n");
    }

    close(fd);
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

std::vector<std::string> splitArguments(const std::string& arguments)
{
    std::vector<std::string> result;
    std::istringstream iss(arguments);
    std::string token;
    while (iss >> token)
    {
        result.push_back(token);
    }
    return result;
}

int main(int argc, char* argv[]) 
{
    if (argc < 7)
    {
        throw std::runtime_error("Few arguments passed to the wrapper.cpp than what is required!\n");
    }

    unsigned processorNumber = std::stoi(argv[1]);
    std::string buildDir = argv[2];
    std::string matrixSpecificCompilation = argv[3];
    std::string matrixSpecificSize = argv[4];

    if (matrixSpecificCompilation == "true")
    {
        modifyCMakeLists(true, matrixSpecificSize);
    }
    else
    {
        modifyCMakeLists(false, matrixSpecificSize);
    }
    
    std::string programPath = buildDir + "SUPerman";
    std::string arguments;
    for (int i = 5; i < argc; ++i)
    {
        arguments += std::string(argv[i]) + ' ';
    }
    arguments.pop_back();

    std::cout << "************SUPERMAN IS BEING COMPILED************" << std::endl;
    compileProgram(buildDir);
    
    pid_t first_pid = fork();
    if (first_pid == 0)
    {
        // 1-Child
        std::string firstProgramArguments = programPath + " pid=1 " + arguments;
        if (processorNumber > 1)
        {
            firstProgramArguments = "mpirun --mca btl ^openib -np " + std::to_string(processorNumber) + ' ' + firstProgramArguments;
            system(firstProgramArguments.c_str());
            return 0;
        }
        std::vector<std::string> args = splitArguments(firstProgramArguments);
        std::vector<char*> execArgs;
        for (auto& arg: args)
        {
            execArgs.push_back(const_cast<char*>(arg.c_str()));
        }
        execArgs.push_back(nullptr);
        execvp(programPath.c_str(), execArgs.data());
        throw std::runtime_error("Failed to run the first program!\n");
    } 
    else if (first_pid > 0) 
    {
        // 1-Parent
        for (int i = 0; i < processorNumber; ++i)
        {
            std::string pipeName = std::string(PIPE_NAME) + '_' + std::to_string(i);
            mkfifo(pipeName.c_str(), S_IFIFO|0640);
        }
        
        int recompilationNeeded;
        for (int i = 0; i < processorNumber; ++i)
        {
            recompilationNeeded = readPipe(i);
        }
        if (recompilationNeeded == 0)
        {
            int status;
            waitpid(first_pid, &status, 0);
        } 
        else if (recompilationNeeded == 1) 
        {
            int k;
            for (int i = 0; i < processorNumber; ++i)
            {
                k = readPipe(i);
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
                    secondProgramArguments = "mpirun --mca btl ^openib -np " + std::to_string(processorNumber) + ' ' + secondProgramArguments;
                    system(secondProgramArguments.c_str());
                    return 0;
                }
                std::vector<std::string> args = splitArguments(secondProgramArguments);
                std::vector<char*> execArgs;
                for (auto& arg: args)
                {
                    execArgs.push_back(const_cast<char*>(arg.c_str()));
                }
                execArgs.push_back(nullptr);
                execvp(programPath.c_str(), execArgs.data());
                throw std::runtime_error("Failed to run the second program after recompilation!\n");
            }
            else if (second_pid > 0)
            {
                // 2-Parent
                for (int i = 0; i < processorNumber; ++i)
                {
                    writePipe(k, i);
                }
                waitpid(second_pid, &status, 0);
            }
            else
            {
                throw std::runtime_error("Second fork failed!\n");
            }
        }

        for (int i = 0; i < processorNumber; ++i)
        {
            std::string pipeName = std::string(PIPE_NAME) + '_' + std::to_string(i);
            unlink(pipeName.c_str());
        }
    }
    else
    {
        throw std::runtime_error("First fork failed!\n");
    }

    return 0;
}
