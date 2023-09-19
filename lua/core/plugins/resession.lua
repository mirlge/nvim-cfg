return {
  'stevearc/resession.nvim',
  opts = {},
  keys = {
    {
      "<Leader>ss",
      function() require("resession").save(vim.fn.input("Session name: ")) end,
      desc =
      "Save session",
    },
    {
      "<Leader>sl",
      function() require("resession").load() end,
      desc =
      "Load session",
    },
    {
      "<Leader>sd",
      function() require("resession").delete( --[[vim.fn.input("Session name: ")]]) end,
      desc =
      "Delete session",
    },
  },
}
