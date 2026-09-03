#### setup
### debian
## control
_gs_config_debian = configuration_data()

_gs_default_arch = run_command('dpkg', '--print-architecture',
    check : true).stdout().strip()

_gs_config_debian.set('package', _gs_default_name)
_gs_config_debian.set('arch', _gs_default_arch)
_gs_config_debian.set('version', _gs_default_version)
_gs_config_debian.set('title', _gs_default_title)
_gs_config_debian.set('author', _gs_default_author)

configure_file(input : 'DEBIAN/control.in',
    configuration : _gs_config_debian,
    output: 'control',
    install_dir : 'DEBIAN',
    install_mode : 'rw-r--r--')




#### compile
### debian
## neovim-release
_ls_target_neovim_release = custom_target('neovim-release',
    command : ['aria2c',
        '--allow-overwrite=true', '--auto-file-renaming=false',
        '--checksum=sha-256=' +
        '012bf3fcac5ade43914df3f174668bf64d05e049a4f032a388c027b1ebd78628',
        'https://github.com/neovim/neovim/releases/download/v0.12.4/nvim-linux-x86_64.tar.gz',
        '-d', meson.current_build_dir(), '-o', 'nvim-linux-x86_64.tar.gz'],
    output : 'nvim-linux-x86_64.tar.gz',
    build_by_default : true,
    console : true)

_ls_target_neovim_archive = custom_target('neovim-archive',
    command : ['tar',
        '-xf', _ls_target_neovim_release,
        '-C', meson.current_build_dir()],
    output : 'nvim-linux-x86_64',
    build_by_default : true,
    console : true)



#### install
### debian
## control
### usr
install_emptydir('usr',
    install_mode : 'rwxr-xr-x')


## lib
install_emptydir('usr/lib',
    install_mode : 'rwxr-xr-x')

install_emptydir('usr/lib/sayshellneovim',
    install_mode : 'rwxr-xr-x')

install_emptydir('usr/lib/sayshellneovim/backend',
    install_mode : 'rwxr-xr-x')


## neovim-release
install_subdir(meson.current_build_dir() / 'nvim-linux-x86_64',
    install_dir : 'usr/lib/sayshellneovim/backend/neovim',
    strip_directory : true,
    install_mode : 'rwxr-xr-x')


## usr
meson.add_install_script('chmod',
    '-R', 'go-w', 'destdir/usr/lib/sayshellneovim')