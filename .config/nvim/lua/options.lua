vim.opt.mouse = 'a'

-- Line configs
vim.opt.number = true
vim.opt.relativenumber = true

-- Split configs
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.inccommand = "split"

-- Line wraping
vim.opt.wrap = false

 -- Tab configs
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Set the cursor to the center when scrolling
vim.opt.scrolloff = 999

-- Virtual edit
vim.opt.virtualedit = "block"

-- Ignorecase for plugins
vim.opt.ignorecase = true

-- Richer colors
vim.opt.termguicolors = true

-- Set the leader key
vim.g.mapleader = " "

-- Netrw
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_winsize = 20

-- Disable the highligh for search
vim.opt.hlsearch = false

-- Lsp Config
vim.o.completeopt = "menu,menuone,noselect"
vim.o.omnifunc="syntaxcomplete#Complete"

vim.o.showmode = false

