### debian
## control
_gs_config_debian = configuration_data()

_gs_default_arch = run_command('dpkg', '--print-architecture',
    check : true).stdout().strip()

_gs_config_debian.set('package', _gs_default_name)
_gs_config_debian.set('arch', _gs_default_arch)
_gs_config_debian.set('version', _gs_default_version)


## DEBIAN
install_emptydir('DEBIAN',
    install_mode : 'rwxr-xr-x')

configure_file(input : 'DEBIAN/control.in',
    configuration : _gs_config_debian,
    output: 'control',
    install_dir : 'DEBIAN',
    install_mode : 'rw-r--r--')



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