--- vim.keymap
-- mode
vim.keymap.set(
        "n",
        ",d",
        ":digraphs<CR><ESC>"
)


-- edit
vim.keymap.set(
        "n",
        ",gi",
        "gg=G<ESC>"
)

vim.keymap.set(
        "n",
        ",gg",
        "gg=G<ESC>"
)

vim.keymap.set(
        "n",
        ",ts",
        ":retab<CR><ESC>"
)

vim.keymap.set(
        "n",
        ",rt",
        ":retab<CR><ESC>"
)


-- edit clipboard
vim.keymap.set(
        {
                "n",
                "v",
        },
        ",yy",
        "\"+yy<ESC>"
)

vim.keymap.set(
        {
                "n",
                "v",
        },
        ",p",
        "\"+p<ESC>"
)

vim.keymap.set(
        {
                "n",
                "v",
        },
        ",P",
        "\"+P<ESC>"
)


-- search
vim.keymap.set(
        "n",
        ",nh",
        ":nohlsearch<CR><ESC>"
)


-- format
vim.keymap.set(
        "n",
        ",j",
        "o<ESC>"
)

vim.keymap.set(
        "n",
        ",k",
        "O<ESC>"
)

vim.keymap.set(
        {
                "n",
                "v",
        },
        ",h",
        ":s/^/<SPACE>/g<CR><ESC>"
)

vim.keymap.set(
        {
                "n",
                "v",
        },
        ",l",
        ":s/$/<SPACE>/g<CR><ESC>"
)

vim.keymap.set(
        "n",
        ",sj",
        ([[
        :s/\s\+$//ge<CR><ESC>
        j<ESC>
        :s/^\s\+//ge<CR><ESC>
        k<ESC>
        g<S-J><ESC>
        ]]):gsub("[%c%s]", "") .. ""
)

vim.keymap.set(
        "n",
        ",sk",
        ([[
        :s/^\s\+//ge<CR><ESC>
        k<ESC>
        :s/\s\+$//ge<CR><ESC>
        g<S-J><ESC>
        ]]):gsub("[%c%s]", "") .. ""
)

vim.keymap.set(
        "n",
        ",sh",
        "i<CR><ESC>"
)

vim.keymap.set(
        "n",
        ",sl",
        "a<CR><ESC>"
)