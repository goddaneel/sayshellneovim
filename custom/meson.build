### usr
install_emptydir('/usr',
    install_mode : 'rwxr-xr-x')


## bin
install_emptydir('/usr/bin',
    install_mode : 'rwxr-xr-x')

install_data('execute/slnvim.lua',
    rename : 'slnvim',
    install_dir : '/usr/bin',
    install_mode : 'rwxr-xr-x')


## lib
install_subdir('config',
    install_dir : '/usr/lib/sayshellneovim/custom/config',
    strip_directory : true,
    install_mode : 'rwxr-xr-x')