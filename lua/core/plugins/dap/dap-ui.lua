return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "mfussenegger/nvim-dap" },
  opts = {},
  keys = {
    { "<Leader>di", function() require("dapui").toggle() end, desc = "Toggle UI" },
  },
}
