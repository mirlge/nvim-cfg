return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<Leader>fe", function() require("oil").open_float() end,                       desc = "Open file explorer" },
    { "<Leader>fE", function() require("oil").open_float(vim.fn.input("Path: ")) end, desc = "Open file explorer in..." },
    { "-",          function() require("oil").open() end,                             desc = "Open file explorer" },
  },
}
