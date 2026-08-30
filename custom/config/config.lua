--- name
-- table
local _la_package_path = {}
local _la_vim_runtimepath = {}



--- path
-- package.path
_la_package_path = {
        "/usr/lib/sayshellneovim/custom/config/global/?.lua",
        "/usr/lib/sayshellneovim/custom/config/ftplugin/?.lua",
        package.path,
}

package.path = table.concat(_la_package_path, ";")


-- vim.o.runtimepat
_la_vim_runtimepath = {
        "/usr/lib/sayshellneovim/custom/config",
        vim.o.runtimepath,
}

vim.o.runtimepath = table.concat(_la_vim_runtimepath, ",")



--- require
-- global
require("01_option")
require("01_keymap")
require("02_highlight")
require("02_filetype")
require("03_toggle")
require("03_config")
require("03_hotkey")
require("03_abbrev")