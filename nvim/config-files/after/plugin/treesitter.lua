local plugin = require("nvim-treesitter")

plugin.setup({
    auto_install = true,
})

plugin.install({
    "vimdoc",
    "c",
    "cpp",
    "rust",
    "lua",
    "python",
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "vimdoc",
        "c",
        "cpp",
        "rust",
        "lua",
        "python",
    },
    callback = function()
        vim.treesitter.start()
    end,
})
