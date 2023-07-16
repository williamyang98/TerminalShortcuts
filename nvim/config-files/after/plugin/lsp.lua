local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.ensure_installed({
    -- utility
    -- "bashls",
    -- "marksman",
    -- "lua_ls",
    -- systems
    "clangd",
    -- "cmake",
    "rust_analyzer",
    -- webdev
    -- "tsserver",
    -- "html",
})

lsp.nvim_workspace()

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

-- only modify bindings if we have a language server
lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }
  vim.keymap.set("n", "<leader>lr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>ld", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "<leader>lh", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>ls", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>lR", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>lH", function() vim.lsp.buf.signature_help() end, opts)
  vim.keymap.set("n", "<leader>lv", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "<leader>ln", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "<leader>lp", function() vim.diagnostic.goto_prev() end, opts)
end)

lsp.setup()

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
    ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
    ["<C-y>"] = cmp.mapping.confirm({ select = true }),
    ["<C-space>"] = cmp.mapping.complete(),
})
cmp_mappings["<Tab>"] = nil
cmp_mappings["<S-Tab>"] = nil
lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

vim.diagnostic.config({
    virtual_text = true
})
