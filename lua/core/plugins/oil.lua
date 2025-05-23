return {
  "stevearc/oil.nvim",
  lazy = false,
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    {
      "<Leader>fe",
      function()
        require("oil").open()
      end,
      desc = "Open file explorer",
    },
  },
}
