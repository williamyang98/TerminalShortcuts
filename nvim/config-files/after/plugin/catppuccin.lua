local scheme = require("catppuccin")
scheme.setup({
  flavour = "mocha",
  -- This does not work, manually set using vim highlight groups
  -- no_italic = true,
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    telescope = { enabled = true },
    mason = true,
  },
})

-- Remove italics from highlight groups
-- Run :h highlight-args for more styling information for hightlight groups
-- Run :Telescope highlights to show all highlight group styles
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "catppuccin",
  callback = function()
    vim.cmd("hi Comment gui=NONE")
    vim.cmd("hi Conditional gui=NONE")
    vim.cmd("hi @namespace gui=NONE")
    vim.cmd("hi @module gui=NONE")
  end,
})

vim.cmd("colorscheme catppuccin")
-- fix the themeing for vim-visual-multi (multiple cursor)
vim.cmd("VMTheme codedark")
