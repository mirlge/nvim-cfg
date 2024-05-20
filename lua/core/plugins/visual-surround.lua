return {
  "NStefan002/visual-surround.nvim",
  opts = {
    use_default_keymaps = false,
  },
  keys = {
    { mode = "x", "<A-s>", function() require("visual-surround").surround(vim.fn.getcharstr()) end, desc = "Surround..." },
  },
}
