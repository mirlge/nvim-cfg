return {
  "nvim-mini/mini.nvim",
  version = false,
  config = function()
    require("mini.align").setup()

    require("mini.starter").setup()

    require("mini.cursorword").setup()

    require("mini.comment").setup({
      mappings = {
        comment = "<Leader>/",
        comment_line = "<Leader>/",
        textobject = "<Leader>/",
      },
    })

    require("mini.splitjoin").setup()

    require("mini.bracketed").setup()
  end,
}
