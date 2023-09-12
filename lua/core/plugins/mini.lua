require("mini.align").setup()

require("mini.move").setup()

require("mini.starter").setup()

require('mini.jump2d').setup()

require("mini.cursorword").setup()

require("mini.comment").setup({
  mappings = {
    comment = '<Leader>/',
    comment_line = '<Leader>/',
    textobject = '<Leader>/',
  },
})

require("mini.splitjoin").setup()
