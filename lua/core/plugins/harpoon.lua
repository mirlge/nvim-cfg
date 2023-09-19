return {
  'theprimeagen/harpoon',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function()
    require("telescope").load_extension('harpoon')
  end,
  keys = {
    {
      "<Leader>fha",
      function() require("harpoon.mark").add_file() end,
      desc = "Add current file to Harpoon",
    },
    {
      "<Leader>fhc",
      function() require("harpoon.mark").clear_all() end,
      desc = "Clear all files in Harpoon",
    },
    { "<Leader>fht", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Toggle Harpoon quick menu" },
    {
      "<Leader>fhz",
      function() require("telescope").extensions.harpoon.marks() end,
      desc = "Show Harpoon marks in Telescope",
    },
  },
}
