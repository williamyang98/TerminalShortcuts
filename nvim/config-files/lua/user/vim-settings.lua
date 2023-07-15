-- display options
vim.opt.scrolloff = 5
vim.opt.encoding = "utf-8"
vim.opt.number = true
vim.opt.modelines = 0
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.laststatus = 2
vim.opt.updatetime = 50
-- override terminal colours
vim.opt.termguicolors = true
-- show line for maximum column width
-- vim.opt.colorcolumn = "100" 

-- fix backspace problems
vim.opt.backspace:append({
    "indent",
    "eol",
    "start",
})

-- pair matching
vim.opt.matchpairs:append({
    "<:>",
})

-- highlight whitespace
vim.opt.list = true
vim.opt.listchars:append({
    space = " ",
    tab = "»›",
    extends = "›",
    precedes = "‹",
    nbsp = "·",
    trail = "·",
})

-- tab size
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true

-- search
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- change backup method
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- terminal settings
local custom_terminal = vim.api.nvim_create_augroup("custom_terminal", {})
vim.api.nvim_create_autocmd('TermOpen', {
    group = custom_terminal,
    callback = function()
        vim.opt.number = false
        vim.opt.relativenumber = false
    end,
})
