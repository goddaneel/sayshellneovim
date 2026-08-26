--- vim.keymap
-- format
vim.keymap.set(
        {
                "n",
                "v",
        },
        ",,h",
        ":s/^/#/g<CR><ESC>"
)

vim.keymap.set(
        {
                "n",
                "v",
        },
        ",,hh",
        ":s/^/#<SPACE>/g<CR><ESC>"
)

vim.keymap.set(
        "n",
        ",,j",
        "o#<TAB><TAB>#<ESC>"
)

vim.keymap.set(
        "n",
        ",,k",
        "O#<TAB><TAB>#<ESC>"
)