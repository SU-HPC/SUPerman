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

int readPipe()
{
    int fd = open(PIPE_NAME, O_RDONLY);
    if (fd == -1)
    {
        throw std::runtime_error("Failed to open pipe for reading!\n");
    }

    int val;
    if (read(fd, &val, sizeof(int)) != sizeof(int))
    {
        throw std::runtime_error("Failed to read integer from pipe!\n");
    }

    close(fd);
    return val;
}

void writePipe(int value)
{
    int fd = open(PIPE_NAME, O_WRONLY);
    if (fd == -1)
    {
        throw std::runtime_error("Failed to open pipe for writing!\n");
    }

    if (write(fd, &value, sizeof(int)) != sizeof(int))
    {
        throw std::runtime_error("Failed to write integer to pipe!\n");
    }

    close(fd);
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
    if (argc < 5)
    {
        throw std::runtime_error("Few arguments passed to the wrapper.cpp than what is required!\n");
    }

    unsigned processorNumber = std::stoi(argv[1]);
    std::string buildDir = argv[2];
    
    std::string programPath = buildDir + "SUPerman";
    std::string arguments;
    for (int i = 3; i < argc; ++i)
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
        mkfifo(PIPE_NAME, S_IFIFO|0640);
        
        int recompilationNeeded = readPipe();
        if (recompilationNeeded == 0)
        {
            int status;
            waitpid(first_pid, &status, 0);
        } 
        else if (recompilationNeeded == 1) 
        {
            int k = readPipe();
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
                writePipe(k);
                waitpid(second_pid, &status, 0);
            }
            else
            {
                throw std::runtime_error("Second fork failed!\n");
            }
        }

        unlink(PIPE_NAME);
    }
    else
    {
        throw std::runtime_error("First fork failed!\n");
    }

    return 0;
}
