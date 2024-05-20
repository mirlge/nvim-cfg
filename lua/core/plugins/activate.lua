return {
  "roobert/activate.nvim",
  dependencies = { 'nvim-telescope/telescope.nvim' },
  keys = {
    {
      "<leader>P",
      function()
        require("activate").list_plugins()
      end,
      desc = "Plugins",
    },
  },
}
