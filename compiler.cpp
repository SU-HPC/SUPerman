//
// Created by delbek on 9/14/24.
//

#include <cstdlib>
#include <iostream>
#include <fstream>


int main(int argv, char* argc[])
{
    std::cout << "SUPERMAN IS BEING COMPILED ..." << std::endl;
    if (argv > 1)
    {
        std::string command = "python3 build_superman.py " + std::string(argc[1]) + " > /dev/null 2>&1";
        system(command.c_str());
    }
    else
    {
        system("python3 build_superman.py > /dev/null 2>&1");
    }
    system("./run_superman.sh");

    int codeGeneration;
    std::ifstream file("build/Cache.txt");
    file >> codeGeneration;
    file.close();
    if (codeGeneration == 1)
    {
        std::cout << "KERNEL CODES ARE BEING COMPILED ..." << std::endl;
        system("python3 build_superman.py > /dev/null 2>&1");
        std::cout << "MAIN PROGRAM IS RUNNING: " << std::endl;
        system("./run_superman.sh");
    }

    return 0;
}
