vim.g.mapleader = " "

-- NvimTree keymaps
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<cr>',   { noremap = true })

-- ToggleTerm keymaps
vim.keymap.set('n', '<leader>t', ':ToggleTerm<cr>', { noremap = true })

vim.cmd [[
    vmap <Tab> >gv
    vmap <S-Tab> <gv
]]
