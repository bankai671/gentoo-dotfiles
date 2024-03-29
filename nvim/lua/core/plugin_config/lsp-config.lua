local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup({})
lspconfig.tsserver.setup({})
lspconfig.clangd.setup({})

--vim.cmd([[autocmd! ColorScheme * highlight NormalFloat bg=#2b3339 guibg=#2b3339]])
--vim.cmd([[autocmd! ColorScheme * highlight FloatBorder guifg=#d3c6aa guibg=#2b3339]])

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = "single",
})

vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<gd>', vim.lsp.buf.definition, {})
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
