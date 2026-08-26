--- vim.o
-- mode
vim.o.compatible = false
vim.o.backspace = "2"
vim.o.mouse = ""
vim.o.digraph = false
vim.o.timeoutlen = 8000


-- edit
vim.o.tabstop = 8
vim.o.softtabstop = 8
vim.o.shiftwidth = 8
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = false


-- edit clipboard
vim.o.clipboard = "unnamedplus"


-- style
vim.o.number = true
vim.o.relativenumber = false
vim.o.list = true
vim.o.wrap = true
vim.o.linebreak = false
vim.o.cursorline = true
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8


-- style listchars
vim.o.listchars = ([[
tab:◢■◣,
trail:▲,
eol:▼,
extends:▶,
precedes:◀,
]]):gsub("[%c%s]", "")..""


-- status
vim.o.report = 0
vim.o.showmode = true
vim.o.showcmd = true
vim.o.laststatus = 2


-- status winbar
vim.o.winbar = ([[
%([%f]%)
%<
%([%c,%l]%)
%=
%m
%([%{&ft},%{&syn}]%)
%([%{&fenc}]%)
%=
%([%{&ff}]%)
%<
%([%{&ts},%{&sts},%{&sw},%{&et}]%)
]]):gsub("[%c%s]", "")..""


-- status statusline
vim.o.statusline = ([[
[%n]
%<
%([%p,%L]%)
%=
%r
%w
%h
%=
%<
%([%{&enc}]%)
[%{mode()}]
]]):gsub("[%c%s]", "")..""


-- search
vim.o.showmatch = true
vim.o.hlsearch = false
vim.o.ignorecase = false
vim.o.incsearch = true
vim.o.smartcase = false


-- file
vim.o.autochdir = true
vim.o.autoread = false
vim.o.backup = false
vim.o.viminfo = ""