local configs = require("nvim-treesitter.configs")
configs.setup {
    -- mandatory parsers 
    ensure_installed = { "vimdoc", "c" , "cpp", "rust", "lua", "python" },
    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        -- we use lsp for this
        additional_vim_regex_highlighting = false,
    },
}

