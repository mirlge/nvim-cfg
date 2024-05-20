return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  opts = {},
  keys = {
    { "<Leader>di", function() require("dapui").toggle() end, desc = "Toggle UI" },
  },
}
