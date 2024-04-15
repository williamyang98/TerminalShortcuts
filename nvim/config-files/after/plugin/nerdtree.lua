-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.NERDTreeShowHidden = 1

vim.keymap.set("n", "<leader>mo", ":NERDTreeFocus<CR>")
vim.keymap.set("n", "<leader>mc", ":NERDTreeClose<CR>")
vim.keymap.set("n", "<leader>mt", ":NERDTreeToggle<CR>")
