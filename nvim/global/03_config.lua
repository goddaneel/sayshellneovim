--- vim.keymap
-- mode
vim.keymap.set(
"n",
([[
<LEADER>m
<LEADER>a
]]):gsub("[%c%s]", "").."",
([[
:set<SPACE>mouse=a<CR><ESC>
:set<SPACE>mouse?<CR><ESC>
]]):gsub("[%c%s]", "")..""
)

vim.keymap.set(
"n",
([[
<LEADER>m
<LEADER>n
]]):gsub("[%c%s]", "").."",
([[
:set<SPACE>mouse=<SPACE><CR><ESC>
:set<SPACE>mouse?<CR><ESC>
]]):gsub("[%c%s]", "")..""
)


-- edit clipboard
vim.keymap.set(
"n",
([[
<LEADER>cb
<LEADER>p
]]):gsub("[%c%s]", "").."",
([[
:set<SPACE>clipboard=unnamedplus<CR><ESC>
:set<SPACE>clipboard?<CR><ESC>
]]):gsub("[%c%s]", "")..""
)

vim.keymap.set(
"n",
([[
<LEADER>cb
<LEADER>u
]]):gsub("[%c%s]", "").."",
([[
:set<SPACE>clipboard=<SPACE><CR><ESC>
:set<SPACE>clipboard?<CR><ESC>
]]):gsub("[%c%s]", "")..""
)

