return {
  "ahmedkhalf/project.nvim",
  main = "project_nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function(_, opts)
    require("project").setup(opts)
    require('telescope').load_extension('projects')
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<Leader>pf",
      function() require("telescope").extensions.projects.projects {} end,
      desc = "Find projects",
    },
  },
}
