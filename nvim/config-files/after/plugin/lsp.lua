-- Deprecrate lsp_zero plugin with builtin vim.lsp in neovim 0.12+
vim.lsp.config("clangd", {})
vim.lsp.config("rust_analyzer", {})
vim.lsp.enable({
    "clangd",
    "rust_analyzer",
})

-- only modify bindings if we have a language server
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local opts = { buffer = args.buf }
        vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>ls", vim.lsp.buf.workspace_symbol, opts)
        vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>lR", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>lH", vim.lsp.buf.signature_help, opts)
        vim.keymap.set("n", "<leader>lv", vim.diagnostic.open_float, opts)
        vim.keymap.set("n", "<leader>ln", vim.diagnostic.goto_next, opts)
        vim.keymap.set("n", "<leader>lp", vim.diagnostic.goto_prev, opts)
    end
})

vim.diagnostic.config({
    virtual_text = true,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = 'E',
            [vim.diagnostic.severity.WARN]  = 'W',
            [vim.diagnostic.severity.HINT]  = 'H',
            [vim.diagnostic.severity.INFO]  = 'I',
        },
    },
})

