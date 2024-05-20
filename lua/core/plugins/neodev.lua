return {
  'folke/neodev.nvim',
  dependencies = "rcarriga/nvim-dap-ui",
  config = function(_, opts)
    require("neodev").setup(opts)

    -- then setup your lsp server as usual
    local lspconfig = require('lspconfig')

    -- example to setup lua_ls and enable call snippets
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          completion = {
            callSnippet = "Replace"
          }
        }
      }
    })
  end,
  opts = {},
}
