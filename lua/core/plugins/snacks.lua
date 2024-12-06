return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
  },
  keys = {
    { "<Leader>bd", function() Snacks.bufdelete() end, desc = "Delete current buffer" },
  },
}
