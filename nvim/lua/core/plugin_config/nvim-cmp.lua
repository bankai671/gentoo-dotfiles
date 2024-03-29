local cmp = require('cmp')

vim.cmd('set completeopt=menu,menuone,noselect')

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },

    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },

    mapping = cmp.mapping.preset.insert({
        ['<C-b>']     =       cmp.mapping.scroll_docs(-4),
        ['<C-f>']     =       cmp.mapping.scroll_docs(4),
        ['<Tab>']     =       cmp.mapping.select_next_item(),
        ['<S-Tab>']   =       cmp.mapping.select_prev_item(),
        ['<C-j>']     =       cmp.mapping.select_next_item(),
        ['<C-k>']     =       cmp.mapping.select_prev_item(),
        ['<C-Space>'] =       cmp.mapping.complete(),
        ['<C-e>']     =       cmp.mapping.abort(),
        ['<Esc>']     =       cmp.mapping.abort(),
        ['<CR>']      =       cmp.mapping.confirm({ select = true }),
    }),

    sources = cmp.config.sources(
    {
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
    },
    {
      { name = 'buffer' },
    })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources(
    {
      { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
    },
    {
      { name = 'buffer' },
    })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources(
    {
      { name = 'path' }
    },
    {
      { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig').clangd.setup({
    capabilities = capabilities
})

require('lspconfig').tsserver.setup({
    capabilities = capabilities
})

require('lspconfig').lua_ls.setup({
    capabilities = capabilities
})
