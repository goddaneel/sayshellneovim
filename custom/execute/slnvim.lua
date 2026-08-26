#!/usr/bin/luajit


-- name
local _ls_exec_neovim = ""
local _la_exec_neovim = {}
local _la_args_neovim = {}


-- argument
for _li_key,_ls_val in ipairs({...}) do
        _la_args_neovim[#_la_args_neovim + 1] = _ls_val
end


-- variable
_la_exec_neovim = {
        "/usr/lib/sayshellneovim/backend/neovim/bin/nvim",
        "-u",
        "/usr/lib/sayshellneovim/custom/config/init.lua",
        table.concat(_la_args_neovim, " "),
}

_ls_exec_neovim = table.concat(_la_exec_neovim, " ")


-- execute
os.execute(_ls_exec_neovim)