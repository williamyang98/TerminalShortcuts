require("catppuccin").setup({
    flavour = "mocha",
    no_italic = true,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        telescope = { enabled = true },
        mason = true,
    }
})
vim.cmd [[colorscheme catppuccin]]

-- fix the themeing for vim-visual-multi (multiple cursor)
vim.cmd [[VMTheme codedark]]
