vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function my_on_attach(bufnr)
  local api = require("nvim-tree.api")

  api.config.mappings.default_on_attach(bufnr)
end

require("nvim-tree").setup({
    on_attach = my_on_attach,
    hijack_cursor = true,
    update_cwd = true,
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
        signcolumn = "no",
        preserve_window_proportions = true,
        adaptive_size = false,
        float = {
            enable = false,
        }
    },
    renderer = {
        group_empty = false,
        indent_markers = {
            enable = false,
            inline_arrows = true,
            icons = {
                corner = "└",
                edge = "│",
                item = "│",
                bottom = "─",
                none = " ",
          },
        },
         icons = {
            web_devicons = {
                file = {
                    enable = true,
                    color = true,
                },
                folder = {
                    enable = false,
                    color = true,
                },
            },
            git_placement = "after",
            padding = " ",
            symlink_arrow = " -> ",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
                modified = true,
                diagnostics = false,
                bookmarks = false,
            },
        },
        root_folder_label = ":~:."
    },
    filters = {
        enable = false,
        dotfiles = false,
        git_ignored = false,
    },
    ui = {
        confirm = {
            trash = true,
            default_yes = true
        }
    },
    actions = {
        change_dir = {
            restrict_above_cwd = true
        },
        open_file = {
            resize_window = true,
        }
    },

})

local api = require('nvim-tree.api')
local Event = api.events.Event

api.events.subscribe(Event.TreeClose, function()
    print(vim.api.nvim_win_get_width(0))
end)

