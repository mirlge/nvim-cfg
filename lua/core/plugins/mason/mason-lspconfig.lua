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

      -- # Arduino language server workaround
      --
      -- Compile arduino-language-server from source, on branch 'main' and with
      -- `replace go.bug.st/lsp => github.com/speelbarrow/go-lsp
      -- v0.1.3-0.20241103164431-cf1c00fb5806` code added to `go.mod`
      ["arduino_language_server"] = function(server_name)
        local mod_capabilities = vim.tbl_deep_extend("force", capabilities, {
          workspace = { semanticTokens = vim.NIL }
        })
        require("lspconfig")[server_name].setup({
          capabilities = mod_capabilities,
        })
      end,
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
