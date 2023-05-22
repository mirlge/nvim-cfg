local lsp = require("lsp-zero").preset({
  manage_nvim_cmp = {
    set_sources = 'recommended',
    set_extra_mappings = true,
  },
})

local cmp = require('cmp')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')

cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

lsp.ensure_installed {
  "pyright",
  "rust_analyzer",
  "tsserver",
  "lua_ls",
}

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps { buffer = bufnr }
  vim.keymap.set("n", "<Leader>lf", vim.lsp.buf.format, { desc = "Format the current buffer" })
  vim.keymap.set("n", "<Leader>lca", vim.lsp.buf.code_action, { desc = "Code action" })

  lsp.buffer_autoformat()
end)

lsp.setup()
