-- setup vim native fold
vim.opt.foldcolumn = "1"    -- 0 will hide the fold indicator
vim.opt.foldlevel = 99      -- maximum fold level before we autofold
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true

require("ufo").setup({
    provider_selector = function(bufnr, filetype, buftype)
        return {
            -- LSP server is too resource intensive
            -- "lsp",
            "treesitter",
            "indent",
        }
    end
})
