-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local module = require("nvim-tree")
module.setup({
    renderer = {
        icons = {
            webdev_colors = false,
            show = {
                file = false,
                folder = true,
                folder_arrow = false,
                git = true,
                modified = false,
            },
            glyphs = {
                default = "",
                folder = {
                    arrow_closed = "-",
                    arrow_open = "+",
                    default = "+",
                    open = "-",
                    empty = "+",
                    empty_open = "-",
                    symlink = "+",
                    symlink_open = "-",
                },
                git = {
                    unstaged = "*",
                    staged = "+",
                    unmerged = "m",
                    renamed = "r",
                    untracked = "?",
                    deleted = "d",
                    ignored = "#",
                },

            },
        },
        indent_markers = {
            enable = true,
        },
    },
})

vim.keymap.set("n", "<leader>to", ":NvimTreeOpen<CR>")
vim.keymap.set("n", "<leader>tc", ":NvimTreeClose<CR>")
vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>")
