return {
  "roobert/activate.nvim",
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
