#!/usr/bin/luajit


-- name
local _ls_exec_neovim


-- variable
_ls_exec_neovim = "/usr/lib/sayshellneovim/backend/neovim/bin/nvim"

for _li_key,_ls_val in ipairs({...}) do
        _ls_exec_neovim = _ls_exec_neovim.." ".._ls_val
end


-- execute
os.execute(_ls_exec_neovim)