return {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  dependencies = {
    "nvim-treesitter/nvim-treesitter", -- optional
    "nvim-tree/nvim-web-devicons",     -- optional
  },
  opts = {},
  keys = {
    { "K",           function() vim.cmd.Lspsaga("hover_doc") end,   desc = "Hover" },
    { "<Leader>lca", function() vim.cmd.Lspsaga("code_action") end, desc = "Action" },
  },
}
