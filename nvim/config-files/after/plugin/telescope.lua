local builtin = require('telescope.builtin')
-- general navigation
vim.keymap.set("n", "<leader>p", builtin.git_files, {})
vim.keymap.set("n", "<leader>fp", builtin.find_files, {})
vim.keymap.set("n", "<leader>fb", function() 
    builtin.buffers({ sort_mru = true })
end)
-- grep search
vim.keymap.set("n", "<leader>fw", function()
    builtin.grep_string({ search = vim.fn.input("grep: ") })
end)
-- git
vim.keymap.set("n", "<leader>fgf", builtin.git_files, {})
vim.keymap.set("n", "<leader>fgs", builtin.git_status, {})
vim.keymap.set("n", "<leader>fgb", builtin.git_branches, {})
-- lsp
vim.keymap.set("n", "<leader>flr", builtin.lsp_references, {})
vim.keymap.set("n", "<leader>fle", function()
    builtin.diagnostics({ bufnr = 0 })
end)
vim.keymap.set("n", "<leader>flE", builtin.diagnostics, {})
vim.keymap.set("n", "<leader>flo", function()
    local opts = {}
    local filetype = vim.bo.filetype
    if filetype == "c" or filetype == "cpp" then
        opts.ignore_symbols = {
            "property",
        }
    elseif filetype == "rust" then
        opts.ignore_symbols = {
            "field",
            "typeparameter",
        }
    elseif filetype == "vim" then
        opts.symbols = { "function" }
    end
    builtin.lsp_document_symbols(opts)
end)
vim.keymap.set("n", "<leader>flO", builtin.lsp_document_symbols, {}) 
-- quickfix buffer
vim.keymap.set("n", "<leader>fq", builtin.quickfix, {})
-- other
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

require("telescope").setup({
    defaults = {
        path_display={ "smart" },
    },
})
