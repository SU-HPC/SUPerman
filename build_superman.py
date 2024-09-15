import os
import subprocess
import sys


def update_cmake_file(integer=None):
    cmake_path = "CMakeLists.txt"
    with open(cmake_path, 'r') as file:
        lines = file.readlines()

    for i, line in enumerate(lines):
        if "### LEFT TO USER FOR MATRIX SPECIFIC COMPILATION" in line:
            if integer is not None:
                lines[i + 1] = f"add_compile_definitions(SPECIFIC=REGISTERS{integer})\n"
                lines[i + 2] = f"add_compile_definitions(NOV={integer})\n"
                lines[i + 3] = "add_definitions(-DMAT_SPECIFIC_COMPILATION)\n"
            else:
                lines[i + 1] = "add_compile_definitions(SPECIFIC=REGISTERS40)\n"
                lines[i + 2] = "add_compile_definitions(NOV=40)\n"
                lines[i + 3] = "# add_definitions(-DMAT_SPECIFIC_COMPILATION)\n"
            break

    with open(cmake_path, 'w') as file:
        file.writelines(lines)


def run_command(command):
    try:
        subprocess.run(command, shell=True, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Command '{command}' failed with error: {e}")


def main():
    if len(sys.argv) > 1:
        try:
            matrix_size = int(sys.argv[1])
            update_cmake_file(matrix_size)
        except ValueError:
            print("Provided argument is not an integer. Proceeding without matrix-specific compilation.")
            update_cmake_file()
    else:
        update_cmake_file()

    commands = [
        "mkdir -p build",
        "cd build",
        "cmake ..",
        "make -j 4",
        "cd ..",
    ]

    for command in commands:
        if command.startswith("cd"):
            dir_name = command.split(" ")[1]
            os.chdir(dir_name)
        else:
            run_command(command)


if __name__ == "__main__":
    main()
