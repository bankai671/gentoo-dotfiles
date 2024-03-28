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


vim.call('plug#end')
