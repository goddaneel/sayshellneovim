--- path
-- and
local _la_package_path = {}

_la_package_path = {
        "/usr/lib/sayshellneovim/custom/config/?.lua",
        "/usr/lib/sayshellneovim/custom/config/ftplugin/?.lua",
        package.path
}

package.path = table.concat(_la_package_path, ";")



--- require
-- and
require("global/01_option")
require("global/01_keymap")
require("global/02_highlight")
require("global/02_filetype")
require("global/03_toggle")
require("global/03_config")
require("global/03_hotkey")
require("global/03_abbrev")