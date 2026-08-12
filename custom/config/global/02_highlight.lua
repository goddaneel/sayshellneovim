--- vim.api.nvim_set_hl
-- WinBar
vim.api.nvim_set_hl(
0,
"WinBar",
{
        bg = "NvimDarkGrey4",
}
)


-- StatusLine
vim.api.nvim_set_hl(
0,
"StatusLine",
{
        link = "Winbar",
}
)


-- StatusLineNC
vim.api.nvim_set_hl(
0,
"StatusLineNC",
{
        link = "WinbarNC",
}
)


-- MsgArea
vim.api.nvim_set_hl(
0,
"MsgArea",
{
        bg = "NvimDarkGrey3",
}
)


-- LineNr
vim.api.nvim_set_hl(
0,
"LineNr",
{
        fg = "NvimDarkGrey4",
}
)


-- CurosrLine
vim.api.nvim_set_hl(
0,
"CursorLine",
{
        bg = "NvimDarkGrey2",
}
)


-- NonText
vim.api.nvim_set_hl(
0,
"NonText",
{
        fg = "NvimDarkGrey3",
}
)


-- Comment
vim.api.nvim_set_hl(
0,
"Comment",
{
        fg = "Grey",
        italic = true,
}
)

