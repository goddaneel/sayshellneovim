#### setup
### project
project('sayshellneovim',
    license : 'Apache-2.0',
    license_files : 'LICENSE',
    meson_version : '>=1.7.0',
    default_options : [
        'prefix=/',
        ]
    )



### option
_gs_option_prefix = get_option('prefix')
_gs_option_bindir = get_option('bindir')
_gs_option_destdir = get_option('destdir')
_gs_option_package = get_option('package')



### execute
_gs_exec_cd = [
    find_program('sh'),
    '-c', 'cd',
]

_gs_exec_shasum = [
    find_program('shasum'),
    '--algorithm', '256',
    ]

_gs_exec_yq = [
    find_program('yq'),
    '-r'
    ]

_gs_exec_install = [
    find_program('install'),
    '-v', '-m', '0755', '-d'
    ]

_gs_exec_aria2c = [
    find_program('aria2c'),
    '--allow-overwrite=true', '--auto-file-renaming=false'
    ]

_gs_exec_tar = [
    find_program('tar'),
    '--strip-components=1', '-xf'
    ]



### default
_gs_default_id = run_command(
    _gs_exec_yq,
    '.id', 'Default.yml',
    check : true,
    ).stdout().strip()

_gs_default_name = run_command(
    _gs_exec_yq,
    '.name', 'Default.yml',
    check : true,
    ).stdout().strip()

_gs_default_title = run_command(
    _gs_exec_yq,
    '.title', 'Default.yml',
    check : true,
    ).stdout().strip()

_gs_default_author = run_command(
    _gs_exec_yq,
    '.author', 'Default.yml',
    check : true,
    ).stdout().strip()

_gs_default_version = run_command(
    _gs_exec_yq,
    '.version', 'Default.yml',
    check : true,
    ).stdout().strip()



#### subdir
### custom
subdir('custom')



### package
subdir('package' / _gs_option_package)