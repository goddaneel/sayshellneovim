### set
set positional-arguments
set shell := ["bash", "-uc"]



### target
default:
        just --list


clean-all:
        git clean -fxd


cmake-setup arg1:
        cmake -S "." -B "build/{{arg1}}" -G "Ninja"


cmake-build arg1:
        cmake --build "build/{{arg1}}"


cmake-install arg1:
        cmake --install "build/{{arg1}}" --prefix "build/{{arg1}}/install"


cmake-work arg1:
        just cmake-setup "{{arg1}}"
        just cmake-build "{{arg1}}"
        just cmake-install "{{arg1}}"


work-debian:
        just clean-all
        just cmake-work "debian"



meson-setup arg1:
        meson setup -Ddestdir="destdir" -Dpackage="{{arg1}}" "buildir/{{arg1}}"


meson-compile arg1:
        meson compile -C "buildir/{{arg1}}"


meson-install arg1:
        meson install --destdir="destdir" -C "buildir/{{arg1}}"


meson-work arg1:
        just clean-all
        just meson-setup "{{arg1}}"
        just meson-compile "{{arg1}}"
        just meson-install "{{arg1}}"


work-debian:
        just meson-work "debian"