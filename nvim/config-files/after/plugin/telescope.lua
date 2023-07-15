local builtin = require('telescope.builtin')
-- general navigation
vim.keymap.set("n", "<leader>p", builtin.git_files, {})
vim.keymap.set("n", "<leader>fp", builtin.find_files, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
-- grep search
vim.keymap.set("n", "<leader>fw", function ()
    builtin.grep_string({ search = vim.fn.input("grep: ") })
end)
-- git
vim.keymap.set("n", "<leader>fgf", builtin.git_files, {})
vim.keymap.set("n", "<leader>fgs", builtin.git_status, {})
vim.keymap.set("n", "<leader>fgb", builtin.git_branches, {})
-- lsp
vim.keymap.set("n", "<leader>flr", builtin.lsp_references, {})
-- other
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
