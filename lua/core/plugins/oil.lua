return {
  "stevearc/oil.nvim",
  lazy = false,
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    {
      "<Leader>fE",
      function()
        require("oil").open(vim.fn.input("Path: "))
      end,
      desc = "Open file explorer in...",
    },
    {
      "<Leader>fe",
      function()
        require("oil").open()
      end,
      desc = "Open file explorer",
    },
  },
}
