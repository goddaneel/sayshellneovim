--- vim.o
-- edit
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4



--- vim.keymap
-- format
vim.keymap.set(
{
        "n",
        "v",
},
",,ll",
":s/$/;/g<CR><ESC>"
)

vim.keymap.set(
{
        "n",
        "v",
},
",,l,",
":s/$/,/g<CR><ESC>"
)

