return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  opts = {
    automatic_enable = {
      exclude = {
        "rust_analyzer",
      },
    },
    ensure_installed = {
      "basedpyright",
      "rust_analyzer",
      "ts_ls",
      "lua_ls",
      "gopls",
    },
  },
}
