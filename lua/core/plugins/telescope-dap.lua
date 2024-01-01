return {
  "nvim-telescope/telescope-dap.nvim",
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("telescope").load_extension("dap")
  end,
  keys = {
    {
      "<Leader>dc",
      function()
        require("telescope").extensions.dap.commands()
      end,
      desc = "Commands",
    },
  },
}
