return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
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
