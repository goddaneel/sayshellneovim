### set
set positional-arguments
set shell := ["bash", "-uc"]


### target
default:
        just --list


clean-all:
        git clean -fxd


meson-setup arg1:
        cp -rv "module" "subprojects"
        meson setup "build/{{arg1}}"
        meson compile -C "build/{{arg1}}"