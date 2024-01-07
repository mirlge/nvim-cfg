return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  opts = { snippet_engine = "luasnip" },
  lazy = false,
  -- Uncomment next line if you want to follow only stable versions
  -- version = "*",
  keys = {
    {
      "<Leader>fd",
      function()
        require("neogen").generate()
      end,
      desc = "Generate documentation",
    },
  },
}
