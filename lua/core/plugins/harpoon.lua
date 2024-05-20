return {
  'ThePrimeagen/harpoon',
  branch = "harpoon2",
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function(_, opts)
    require("harpoon"):setup(opts)
  end,
  opts = {},
  keys = {
    {
      "<Leader>fha",
      function() require("harpoon"):list():append() end,
      desc = "Add current file to Harpoon",
    },
    {
      "<Leader>fhc",
      function() require("harpoon"):list():clear() end,
      desc = "Clear all files in Harpoon",
    },
    { "<Leader>fhq", function() require("harpoon").ui:toggle_quick_menu() end, desc = "Toggle Harpoon quick menu" },
    {
      "<Leader>fhz",
      function() require("telescope").extensions.harpoon.marks() end,
      desc = "Show Harpoon marks in Telescope",
    },
  },
}
