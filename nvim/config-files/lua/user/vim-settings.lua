-- display options
vim.opt.encoding = "utf-8"
vim.opt.scrolloff = 5
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.laststatus = 2
vim.opt.updatetime = 50
vim.opt.termguicolors = true

-- show line for maximum column width
-- vim.opt.colorcolumn = "100" 

-- disable modelines
vim.opt.modeline = false 
vim.opt.modelines = 0

-- stop adding newlines when on dos
vim.opt.fixendofline = false

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
vim.opt.undodir = vim.env.HOME .. "/.nvim/undodir"
vim.opt.undofile = true

-- terminal settings
vim.api.nvim_create_autocmd('TermOpen', {
    callback = function()
        vim.opt.number = false
        vim.opt.relativenumber = false
    end,
})
