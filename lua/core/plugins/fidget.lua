return {
  "j-hui/fidget.nvim",
  dependencies = { "neopywal" },
  config = function(_, opts)
    require("neopywal.theme.plugins.fidget").setup()
    require("fidget").setup(opts)
  end,
  opts = {
    progress = {
      display = {
        done_style = "FidgetDone",
        progress_style = "FigdetProgress",
        group_style = "FidgetGroup",
        icon_style = "FidgetIcon",
      },
    },
    notification = {
      view = {
        group_separator_hl = "FidgetSeparator",
      },
      window = {
        normal_hl = "FidgetNormal",
        winblend = 0,
      },
    },
  },
}
