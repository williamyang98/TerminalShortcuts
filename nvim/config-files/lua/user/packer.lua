vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    -- vim packages
    use "tpope/vim-surround"
    use "tpope/vim-commentary"
    use "tpope/vim-fugitive"
    use "tpope/vim-repeat"
    use { "mg979/vim-visual-multi", branch = "master" }
    use "mbbill/undotree"

    -- colorscheme
    use { "catppuccin/nvim", as = "catppuccin" }

    -- status line
    use "nvim-lualine/lualine.nvim"

    -- navigation
    use { "phaazon/hop.nvim", branch = "v2" }
    use "nvim-tree/nvim-tree.lua"

    -- fuzzy search
    use {
        "nvim-telescope/telescope.nvim", branch = "0.1.x",
        requires = { { "nvim-lua/plenary.nvim" } },
    }

    -- git
    use { "sindrets/diffview.nvim" }
    use { "lewis6991/gitsigns.nvim" }

    -- treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local installer = require("nvim-treesitter.install")
            local updater = installer.update({ with_sync = true })
            updater()
        end,
    }
    use "nvim-treesitter/playground"
    use "nvim-treesitter/nvim-treesitter-context"

    -- lsp servers
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- lsp support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            -- autocomplete
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
            -- snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
end)
