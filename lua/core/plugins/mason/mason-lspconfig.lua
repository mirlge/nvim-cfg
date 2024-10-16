return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function(_, opts)
    local main = require("mason-lspconfig")

    main.setup(opts)

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    }
    main.setup_handlers({
      function(server_name)
        require("lspconfig")[server_name].setup({
          capabilities = capabilities,
        })
      end,
      ["rust_analyzer"] = function() end,
    })
  end,
  opts = {
    ensure_installed = {
      "basedpyright",
      "rust_analyzer",
      "ts_ls",
      "lua_ls",
      "gopls",
    },
  },
}
