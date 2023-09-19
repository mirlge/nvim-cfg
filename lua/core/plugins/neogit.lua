return {
  'NeogitOrg/neogit',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {},
  keys = {
    { "<Leader>gs", function() require("neogit").open({ kind = "split" }) end, desc = "Open Neogit" },
  },
}
