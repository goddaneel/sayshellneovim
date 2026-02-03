default:
        just --list


clean-all:
        '/usr/bin/git' clean -fxd


mkdir:
        declare -a "_la_exec_install"
        #       #
        _la_exec_install=(
                '/usr/bin/install'
                -v
                -d
                -m 0755
                "./build/create/DEBIAN"
                "./build/create/info"
                "./build/dpkg/DEBIAN"
                "./build/dpkg/usr/bin"
                "./build/dpkg/usr/share/sayshellnvim/main/base"
                "./build/dpkg/usr/share/sayshellnvim/main/info"
                "./build/dpkg/usr/share/sayshellnvim/extra/profile"
                "./export"
        )
        #       #
        "${_la_exec_install[@]}"


precopy:
        declare -a "_la_exec_install" ;
        declare -a "_la_exec_fdfind" ;
        #               #
        #               #
        _la_exec_install=(
                '/usr/bin/install'
                -v
                -p
                -m 0755
                -t
                "./build/dpkg/usr/bin/"
                --
                "./dpkg/usr/bin/sayshellnvim"
        )
        #               #
        "${_la_exec_install[@]}" ;
        #               #
        #               #
        _la_exec_install=(
                '/usr/bin/install'
                -v
                -p
                -m 0644
                -t
                "./build/dpkg/usr/share/sayshellnvim/main/info/"
                --
                "./LICENSE"
        )
        #               #
        "${_la_exec_install[@]}" ;
        #               #
        #               #
        echo "${_gs_build_version}" > "./build/create/info/version" ;
        #               #
        _la_exec_fdfind=(
                '/usr/bin/fdfind'
                --type file
                .
                "./build/create/info"
                "./dpkg/usr/share/sayshellnvim/main/info"
                --exec
                '/usr/bin/install'
                -v
                -p
                -m 0644
                -t
                "./build/dpkg/usr/share/sayshellnvim/main/info/"
                --
        )
        #               #
        "${_la_exec_fdfind[@]}" ;
        #               #
        #               #
        _la_exec_fdfind=(
                '/usr/bin/fdfind'
                --type file
                .
                "./dpkg/usr/share/sayshellnvim/extra/profile/"
                --exec
                '/usr/bin/install'
                -v
                -p
                -m 0644
                -t
                "./build/dpkg/usr/share/sayshellnvim/extra/profile/"
                --
        )
        #               #
        "${_la_exec_fdfind[@]}" ;


shasum:
        ( cd "./dpkg" ;
        #               #
        declare -a "_la_exec_fdfind" ;
        #               #
        _la_exec_fdfind=(
                '/usr/bin/fdfind'
                --strip-cwd-prefix
                --type file
                --exclude "./DEBIAN"
                --exec
                '/usr/bin/shasum'
                --algorithm 256
        )
        #               #
        "${_la_exec_fdfind[@]}" > "../build/create/DEBIAN/shasums" ;
        #               #
        exit ) ;


dpkg:
        declare -a "_la_exec_dpkg" ;
        #               #
        _la_exec_dpkg=(
                '/usr/bin/dpkg-deb'
                --root-owner-group
                --build
                "./build/dpkg"
                "./export/${_gs_build_package}"
        )
        #               #
        "${_la_exec_dpkg[@]}" ;
        #               #
        ( cd "./export" ;
        #               #
        declare -a "_la_exec_shasum" ;
        #               #
        _la_exec_shasum=(
                '/usr/bin/shasum'
                --algorithm 512
                "${_gs_build_package}"
        )
        #               #
        "${_la_exec_shasum[@]}" > "${_gs_build_package}.shasum" ;
        #               #
        exit ) ;
