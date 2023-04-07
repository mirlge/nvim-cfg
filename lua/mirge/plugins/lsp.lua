local lsp = require "lsp-zero".preset({
  manage_nvim_cmp = {
    set_sources = 'recommended',
    set_extra_mappings = true,
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
  vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)

  lsp.buffer_autoformat()
end)

-- (Optional) Configure lua language server for neovim
--require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
