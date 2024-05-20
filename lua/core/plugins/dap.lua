return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      {
        "<Leader>db",
        function()
          require("dap").toggle_breakpoint()
        end,
        desc = "Toggle breakpoint",
      },
      {
        "<Leader>dc",
        function()
          require("dap").continue()
        end,
        desc = "Continue",
      },
      {
        "<Leader>dS",
        function()
          require("dap").close()
        end,
        desc = "Stop",
      },
      {
        "<Leader>dsi",
        function()
          require("dap").step_into()
        end,
        desc = "Step into",
      },
      {
        "<Leader>dso",
        function()
          require("dap").step_out()
        end,
        desc = "Step out",
      },
      {
        "<Leader>dsO",
        function()
          require("dap").step_over()
        end,
        desc = "Step over",
      },
      {
        "<Leader>dsb",
        function()
          require("dap").step_back()
        end,
        desc = "Step back",
      },
    },
  },
  { import = "core.plugins.dap" },
}
