--- path
-- and
package.path = "/usr/lib/sayshellneovim/custom/config/?.lua;"..package.path


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