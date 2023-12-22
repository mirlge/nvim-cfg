return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function(_, opts)
    local main = require("mason-lspconfig")

    main.setup(opts)

    main.setup_handlers {
      function(server_name)
        require("lspconfig")[server_name].setup {}
      end,
    }
  end,
  opts = {
    ensure_installed = {
      "pyright",
      "rust_analyzer",
      "tsserver",
      "lua_ls",
      "gopls",
    },
  },
}
