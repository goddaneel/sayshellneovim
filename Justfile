### set
set positional-arguments
set shell := ["bash", "-uc"]


### target
default:
        just --list


clean-all:
        git clean -fxd


meson-subproject:
        cp -rv "module" "subprojects"


meson-setup arg1:
        meson setup -Dpackage="{{arg1}}" "buildir/{{arg1}}"
        meson compile -C "buildir/{{arg1}}"


meson-install arg1:
        meson install -C "buildir/{{arg1}}" --destdir="destdir"


work-meson arg1:
        just clean-all
        just meson-subproject
        just meson-setup "{{arg1}}"
        just meson-install "{{arg1}}"