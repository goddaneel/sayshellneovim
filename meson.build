### project
project('sayshellneovim',
    license : 'Apache-2.0',
    license_files : 'LICENSE',
    meson_version : '>=1.7.0',
    default_options : [
        'prefix=/'
        ]
    )



### default
_gs_default_id = run_command('yq', '-r', '.id', 'Default.yml',
    check : true).stdout().strip()

_gs_default_name = run_command('yq', '-r', '.name', 'Default.yml',
    check : true).stdout().strip()

_gs_default_title = run_command('yq', '-r', '.title', 'Default.yml',
    check : true).stdout().strip()

_gs_default_author = run_command('yq', '-r', '.author', 'Default.yml',
    check : true).stdout().strip()

_gs_default_version = run_command('yq', '-r', '.version', 'Default.yml',
    check : true).stdout().strip()



### subproject
_gs_subproject_neovim = subproject('neovim-release')



### package
_gs_option_package = get_option('package')

subdir('package' / _gs_option_package)