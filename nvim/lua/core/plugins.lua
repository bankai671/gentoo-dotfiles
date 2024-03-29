local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- color theme
Plug('https://github.com/ellisonleao/gruvbox.nvim')

-- file manager
Plug('https://github.com/nvim-tree/nvim-tree.lua')

-- nerd icons
Plug('https://github.com/nvim-tree/nvim-web-devicons')

-- syntax highlighting
Plug('https://github.com/nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

-- autopairs
Plug('https://github.com/windwp/nvim-autopairs')

-- bottom bar
Plug('https://github.com/nvim-lualine/lualine.nvim')

-- top bar
Plug('https://github.com/akinsho/bufferline.nvim')

-- terminal
Plug('https://github.com/akinsho/toggleterm.nvim', { ['tag'] = '*' })

-- complation
Plug('https://github.com/neovim/nvim-lspconfig')
Plug('https://github.com/hrsh7th/cmp-nvim-lsp')
Plug('https://github.com/hrsh7th/cmp-buffer')
Plug('https://github.com/hrsh7th/cmp-path')
Plug('https://github.com/hrsh7th/cmp-cmdline')
Plug('https://github.com/hrsh7th/nvim-cmp')
Plug('https://github.com/L3MON4D3/LuaSnip')
Plug('https://github.com/saadparwaiz1/cmp_luasnip')

-- lsp
Plug('https://github.com/williamboman/mason.nvim')
Plug('https://github.com/williamboman/mason-lspconfig.nvim')
Plug('https://github.com/neovim/nvim-lspconfig')
Plug('https://github.com/nvim-telescope/telescope-ui-select.nvim')
Plug('https://github.com/nvim-lua/plenary.nvim')
Plug('https://github.com/nvim-telescope/telescope.nvim', { ['tag'] = '0.1.6' })

vim.call('plug#end')
