#!/usr/bin/luajit


-- name
local _la_exec_nvimqt = {}


-- variable
_la_exec_nvimqt = {
        "/usr/bin/nvim-qt",
        "--nvim",
        "/usr/lib/sayshellneovim/backend/neovim/bin/nvim",
        table.concat({...}, " "),
        "--",
        "--clean",
        "-u",
        "/usr/lib/sayshellneovim/custom/config/config.lua",
}


-- execute
os.execute(table.concat(_la_exec_nvimqt, " "))