return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim",
  },
  opts = { kind = "split" },
  cmd = "Neogit",
  keys = {
    {
      "<Leader>gi",
      function()
        require("neogit").open()
      end,
      desc = "Open Neogit",
    },
  },
}
