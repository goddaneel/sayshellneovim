### set
set positional-arguments
set shell := ["bash", "-uc"]



### variable
_gs_default_name := `yq -r ".name" "Default.yml"`
_gs_default_version := `yq -r ".version" "Default.yml"`

_gs_default_debian_arch := `dpkg --print-architecture`
_gs_package_debian := _gs_default_name + "-" + _gs_default_version + "-" + _gs_default_debian_arch



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


package-debian:
        #!/usr/bin/bash
        set -euxo pipefail
        #       #
        declare -a "_la_exec_install"
        declare -a "_la_exec_dpkg"
        #       #
        _la_exec_install=(
                install -v -d -m 0755
                "export"
                "export/debian"
        )
        #       #
        _la_exec_dpkg=(
                dpkg-deb --root-owner-group --build
                "buildir/debian/destdir"
                "export/debian/{{_gs_package_debian}}.deb"
        )
        #       #
        "${_la_exec_install[@]}"
        "${_la_exec_dpkg[@]}"
        #       #
        just shasum-export "export/debian/{{_gs_package_debian}}.deb"


meson-work arg1:
        just clean-all
        just meson-setup "{{arg1}}"
        just meson-compile "{{arg1}}"
        just meson-install "{{arg1}}"


work-debian:
        just meson-work "debian"
        just package-debian