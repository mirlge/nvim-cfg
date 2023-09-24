return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      { "<Leader>db", function() require("dap").toggle_breakpoint() end, desc = "Toggle breakpoint" },
      { "<Leader>dc", function() require("dap").continue() end,          desc = "Continue" },
    },
  },
  { import = "core.plugins.dap" },
}
