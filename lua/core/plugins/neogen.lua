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
    {
      "<Leader>fdf",
      function()
        require("neogen").generate({ type = "func" })
      end,
      desc = "Generate documentation for function",
    },
    {
      "<Leader>fdc",
      function()
        require("neogen").generate({ type = "class" })
      end,
      desc = "Generate documentation for class",
    },
    {
      "<Leader>fdt",
      function()
        require("neogen").generate({ type = "type" })
      end,
      desc = "Generate documentation for type",
    },
    {
      "<Leader>fdF",
      function()
        require("neogen").generate({ type = "file" })
      end,
      desc = "Generate documentation for file",
    },
  },
}
