-- https://lazy.folke.io/spec/examples
return {
    -- colorscheme
    {
        "catppuccin/nvim",
        as = "catppuccin",
        name = "catppuccin",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
          vim.cmd([[colorscheme catppuccin]])
        end,
    },
    -- regular vim packages
    "tpope/vim-surround",
    "tpope/vim-commentary",
    "tpope/vim-fugitive",
    "tpope/vim-repeat",
    "tpope/vim-obsession",
    { "mg979/vim-visual-multi", branch = "master" },
    "mbbill/undotree",
    -- status line
    "nvim-lualine/lualine.nvim",
    -- navigation
    { "smoka7/hop.nvim", branch = "master" },
    -- use "nvim-tree/nvim-tree.lua"
    -- nvim-tree is extremely laggy on windows when alot of files are being added/deleted
    "scrooloose/nerdtree",
    -- fuzzy search
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
    -- git
    "sindrets/diffview.nvim",
    "lewis6991/gitsigns.nvim",
    -- code folding
    {
        "kevinhwang91/nvim-ufo",
        dependencies = {
            "kevinhwang91/promise-async",
        },
    },
    -- indent view
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {},
    },
    -- mason
    {
        "mason-org/mason.nvim",
        opts = {},
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = {
            "mason-org/mason.nvim",
        },
        opts = {
            ensure_installed = {
                -- Problem is that tree-sitter-cli relies on glibc and this will keep breaking on linux
                -- Best practise seems to be install from cargo rust apparently
                -- "tree-sitter-cli",
            },
        },
    },
    -- lsp servers
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        dependencies = {
            -- lsp support
            "neovim/nvim-lspconfig",
            -- autocomplete
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lua",
            -- snippets
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets",
        },
    },
    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",
        dependencies = {
            "WhoIsSethDaniel/mason-tool-installer.nvim",
        },
    },
    -- nvim-treesitter/playground is replaced with :Inspect
    -- "nvim-treesitter/playground",
    "nvim-treesitter/nvim-treesitter-context",
}
