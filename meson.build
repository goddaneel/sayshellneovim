#### setup
### project
project('sayshellneovim',
    license : 'Apache-2.0',
    license_files : 'LICENSE',
    meson_version : '>=1.7.0',
    default_options : [
        'prefix=/'
        ]
    )



### option
_gs_option_prefix = get_option('prefix')
_gs_option_bindir = get_option('bindir')
_gs_option_destdir = get_option('destdir')
_gs_option_package = get_option('package')



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



#### subdir
### custom
subdir('custom')



### package
subdir('package' / _gs_option_package)