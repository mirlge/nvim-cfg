return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    preset = "helix",
    spec = {
      {
        {
          "<Leader>f",
          group = "File",
          { "<Leader>fh",     group = "Harpoon" },
          { "<Leader>ft",     group = "Tangle" },
          { "<Leader>f<A-e>", desc = "Magnify code block" },
        },
        { "<Leader>b", group = "Buffer" },
        { "<Leader>t", group = "Neorg TODO" },
        { "<Leader>T", group = "Trouble" },
        { "<Leader>h", group = "Help" },
        { "<Leader>g", group = "Git" },
        { "<Leader>k", group = "Keymap" },
        {
          "<Leader>l",
          group = "LSP",
          { "<Leader>lc", group = "Code" },
        },
        {
          "<Leader>d",
          group = "DAP",
          { "<Leader>ds", group = "Step" },
        },
        {
          "<Leader>o",
          group = "(Ne)org",
          { "<Leader>oi", group = "org insert" },
          { "<Leader>ox", group = "org clock" },
        },
        { "<Leader>s", group = "Session" },
        { "<Leader>q", group = "DB" },
        { "<Leader>S", group = "Flash" },
      },
      {
        "gr",
        group = "Refactor",
        { "grr", desc = "Smart rename" },
      },
    },
  },
}
