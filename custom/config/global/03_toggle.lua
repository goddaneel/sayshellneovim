--- vim.keymap
-- mode
vim.keymap.set(
"n",
"<LEADER>dg",
([[
:set<SPACE>digraph!<CR><ESC>
:set<SPACE>digraph?<CR><ESC>
]]):gsub("[%c%s]", "")..""
)


-- edit
vim.keymap.set(
"n",
"<LEADER>ai",
([[
:set<SPACE>autoindent!<CR><ESC>
:set<SPACE>autoindent?<CR><ESC>
]]):gsub("[%c%s]", "")..""
)

vim.keymap.set(
"n",
"<LEADER>si",
([[
:set<SPACE>smartindent!<CR><ESC>
:set<SPACE>smartindent?<CR><ESC>
]]):gsub("[%c%s]", "")..""
)

vim.keymap.set(
"n",
([[
<LEADER>p
<LEADER>
]]):gsub("[%c%s]", "").."",
([[
:set<SPACE>paste!<CR><ESC>
:set<SPACE>paste?<CR><ESC>
]]):gsub("[%c%s]", "")..""
)


-- style
vim.keymap.set(
"n",
"<LEADER>nu",
([[
:set<SPACE>number!<CR><ESC>
:set<SPACE>number?<CR><ESC>
]]):gsub("[%c%s]", "")..""
)

vim.keymap.set(
"n",
"<LEADER>rnu",
([[
:set<SPACE>relativenumber!<CR><ESC>
:set<SPACE>relativenumber?<CR><ESC>
]]):gsub("[%c%s]", "")..""
)

vim.keymap.set(
"n",
([[
<LEADER>l
<LEADER>
]]):gsub("[%c%s]", "").."",
([[
:set<SPACE>list!<CR><ESC>
:set<SPACE>list?<CR><ESC>
]]):gsub("[%c%s]", "")..""
)

vim.keymap.set(
"n",
"<LEADER>cul",
([[
:set<SPACE>cursorline!<CR><ESC>
:set<SPACE>cursorline?<CR><ESC>
]]):gsub("[%c%s]", "")..""
)

vim.keymap.set(
"n",
([[
<LEADER>w
<LEADER>
]]):gsub("[%c%s]", "").."",
([[
:set<SPACE>wrap!<CR><ESC>
:set<SPACE>wrap?<CR><ESC>
]]):gsub("[%c%s]", "")..""
)


-- search
vim.keymap.set(
"n",
"<LEADER>hls",
([[
:set<SPACE>hlsearch!<CR><ESC>
:set<SPACE>hlsearch?<CR><ESC>
]]):gsub("[%c%s]", "")..""
)

vim.keymap.set(
"n",
"<LEADER>is",
([[
:set<SPACE>incsearch!<CR><ESC>
:set<SPACE>incsearch?<CR><ESC>
]]):gsub("[%c%s]", "")..""
)

vim.keymap.set(
"n",
"<LEADER>ic",
([[
:set<SPACE>ignorecase!<CR><ESC>
:set<SPACE>ignorecase?<CR><ESC>
]]):gsub("[%c%s]", "")..""
)

