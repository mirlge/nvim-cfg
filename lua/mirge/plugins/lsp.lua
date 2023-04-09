local lsp = require "lsp-zero".preset({
  manage_nvim_cmp = {
    set_sources = 'recommended',
    set_extra_mappings = true,
  },
})

local cmp = require('cmp')

cmp.setup({
  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
})

lsp.ensure_installed {
  "pyright",
  "rust_analyzer",
  "tsserver",
  "lua_ls",
}

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
  vim.keymap.set("n", "<Leader>lf", vim.lsp.buf.format)

  lsp.buffer_autoformat()
end)

lsp.setup()
