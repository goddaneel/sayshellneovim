--- vim.keymap
-- format
vim.keymap.set(
        {
                "n",
                "v",
        },
        ",,ll",
        ":s/$/<SPACE><SPACE>/g<CR><ESC>"
)