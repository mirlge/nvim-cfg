return {
  "famiu/bufdelete.nvim",
  keys = {
    { "<Leader>bd", function() require("bufdelete").bufdelete() end,         desc = "Delete current buffer" },
    { "<Leader>bD", function() require("bufdelete").bufdelete(0, true) end,  desc = "Delete current buffer!" },
  },
}
