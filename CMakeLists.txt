#### setup
### project
## cmake
cmake_minimum_required(VERSION 3.31.6)

## project
project(sayshellneovim)



### execute
## find_program
find_program(_gs_exec_yq NAMES "yq" REQUIRED)
find_program(_gs_exec_tar NAMES "tar" REQUIRED)


## set
set(_gs_exec_yq "${_gs_exec_yq}" "-r")
set(_gs_exec_tar "${_gs_exec_tar}" "--strip-components=1" "-xf")



### default
## function
function(_gf_default _ls_arg1 _ls_arg2)
        execute_process(
                COMMAND ${_gs_exec_yq} "${_ls_arg2}" "Default.yml"
                OUTPUT_VARIABLE _ls_default
                OUTPUT_STRIP_TRAILING_WHITESPACE
                WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}"
                COMMAND_ERROR_IS_FATAL ANY
        )

        message(STATUS "${_ls_default}")

        set("_gs_default_${_gs_arg1}" "${_ls_default}" PARENT_SCOPE)
endfunction()


## _gf_default
_gf_default("id" ".id")
_gf_default("name" ".name")
_gf_default("title" ".title")
_gf_default("author" ".author")
_gf_default("version" ".version")