## debian
_gs_config_debian = configuration_data()

_gs_default_arch = run_command('dpkg', '--print-architecture',
    check : true).stdout().strip()

_gs_config_debian.set('package', _gs_default_name)
_gs_config_debian.set('arch', _gs_default_arch)
_gs_config_debian.set('version', _gs_default_version)

install_emptydir('DEBIAN',
    install_mode : 'rwxr-xr-x')

configure_file(input : 'DEBIAN/control.in',
    configuration : _gs_config_debian,
    output: 'control',
    install_dir : 'DEBIAN',
    install_mode : 'rw-r--r--')


## lib
install_emptydir('lib/sayshellnvim',
    install_mode : 'rwxr-xr-x')

# neovim
install_subdir(
    '../../../module/neovim-release',
    install_dir : 'lib/sayshellneovim/extra/backend/neovim',
    install_mode : 'rwxr-xr-x'
)