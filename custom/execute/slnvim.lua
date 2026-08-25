#!/usr/bin/luajit


-- name
local _ls_exec_neovim = ""
local _la_exec_neovim = {}


-- variable
_la_exec_neovim = {
        "/usr/lib/sayshellneovim/backend/neovim/bin/nvim",
        "--clean",
        "-u",
        "/usr/lib/sayshellneovim/custom/config/init.lua",
}

for _li_key, _ls_val in ipairs(_la_exec_neovim) do
        _ls_exec_neovim = _ls_exec_neovim.." ".._ls_val;
end


-- argument
for _li_key,_ls_val in ipairs({...}) do
        _ls_exec_neovim = _ls_exec_neovim.." ".._ls_val
end


-- execute
os.execute(_ls_exec_neovim)