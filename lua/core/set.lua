--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.rnu = true
vim.o.nu = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.termguicolors = true

vim.o.tabstop = 2
vim.o.shiftwidth = 0
vim.o.softtabstop = -1
vim.o.expandtab = true
vim.o.smartindent = true

vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

vim.o.updatetime = 50

--vim.o.colorcolumn = "-5"

vim.o.mouse = "a"

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.scrolloff = 8
