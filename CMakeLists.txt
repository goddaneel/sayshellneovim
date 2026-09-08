#### setup
### project
cmake_minimum_required(VERSION 3.31.6)

project(sayshellneovim)



### program
find_program(
        _gs_exec_yq
        NAMES "yq"
        REQUIRED
)

find_program(
        _gs_exec_tar
        NAMES "tar"
        REQUIRED
)