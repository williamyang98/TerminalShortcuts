vim.g.mapleader = " "

-- recenter cursor vertically after scroll and search
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- single line relocation 
vim.keymap.set("n", "<C-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==")
-- visual mode line relocation
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

-- vim tab
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>")
vim.keymap.set("n", "<leader>tc", ":tabc<CR>")
vim.keymap.set("n", "<leader>tl", ":tabm +1<CR>")
vim.keymap.set("n", "<leader>th", ":tabm -1<CR>")

--1vim buffers
vim.keymap.set("n", "<leader>b", "<C-6>")
