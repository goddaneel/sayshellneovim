#### setup
### dpkg
## variable
_gs_default_arch = run_command(
    find_program('dpkg'),
    '--print-architecture',
    check : true
    ).stdout().strip()

_gs_package_debian = _gs_default_name + '-' + _gs_default_version + '-' + _gs_default_arch + '.deb'


## control
_gs_config_debian = configuration_data()

_gs_config_debian.set('package', _gs_default_name)
_gs_config_debian.set('arch', _gs_default_arch)
_gs_config_debian.set('version', _gs_default_version)
_gs_config_debian.set('title', _gs_default_title)
_gs_config_debian.set('author', _gs_default_author)

configure_file(
    configuration : _gs_config_debian,
    input : 'DEBIAN/control.in',
    output: 'control',
    install_dir : 'DEBIAN',
    install_mode : 'rw-r--r--'
    )




#### compile
### neovim-release
## aria2
_ls_target_neovim_release = custom_target(
    'neovim-release',
    build_by_default : true,
    console : true,
    output : 'nvim-linux-x86_64.tar.gz',
    command : [
        _gs_exec_aria2c,
        '--checksum=sha-256=' +
        '012bf3fcac5ade43914df3f174668bf64d05e049a4f032a388c027b1ebd78628',
        'https://github.com/neovim/neovim/releases/download/v0.12.4/nvim-linux-x86_64.tar.gz',
        '-d', meson.project_build_root(), '-o', '@OUTPUT@'
        ],
    )


## tar
_ls_target_neovim_archive = custom_target(
    'neovim_archive',
    build_by_default : true,
    console : true,
    install : true,
    input : _ls_target_neovim_release,
    output : 'neovim',
    install_dir : 'usr/lib/sayshellneovim/backend',
    install_mode : 'rwxr-xr-x',
    command : [
        _gs_exec_install,
        meson.project_build_root() / '@OUTPUT@',
        '&&',
        _gs_exec_tar,
        '@INPUT@', '-C', meson.project_build_root() / '@OUTPUT@',
        ],
    )



#### install
### debian
### usr
install_emptydir(
    'usr',
    install_mode : 'rwxr-xr-x',
    )


## lib
install_emptydir(
    'usr/lib',
    install_mode : 'rwxr-xr-x',
    )

install_emptydir(
    'usr/lib/sayshellneovim',
    install_mode : 'rwxr-xr-x',
    )

install_emptydir(
    'usr/lib/sayshellneovim/backend',
    install_mode : 'rwxr-xr-x',
    )


## usr
meson.add_install_script(
    find_program('chmod'),
    '-R', 'go-w', 'destdir/usr/lib/sayshellneovim',
    )



### dpkg
## package
meson.add_install_script(
    _gs_exec_install,
    meson.project_source_root() / 'export',
    meson.project_source_root() / 'export/debian',
)

meson.add_install_script(
    find_program('dpkg-deb'),
    '--root-owner-group', '--build', 'destdir',
    meson.project_source_root() / 'export/debian' / _gs_package_debian,
)