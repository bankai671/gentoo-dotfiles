vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.updatetime=300
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.encoding = "utf-8"
vim.opt.background = "dark"

vim.cmd [[
    syntax on
    filetype indent on
    set nocompatible
    set clipboard^=unnamed,unnamedplus
    set number
    set nobackup
    set noswapfile
    set nowrap
    set noundofile
    set cindent
    set termguicolors
    aunmenu PopUp.How-to\ disable\ mouse
    aunmenu PopUp.-1-
]]
