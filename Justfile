### set
set positional-arguments
set shell := ["bash", "-uc"]



### target
default:
        just --list


clean-all:
        git clean -fxd


shasum-export arg1:
        #!/usr/bin/bash
        set -euxo pipefail
        #       #
        cd "{{parent_directory(arg1)}}"
        #       #
        shasum --algorithm 256 "{{file_name(arg1)}}" >> "{{file_name(arg1)}}.shasum" 


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