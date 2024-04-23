return {
  'nvim-orgmode/orgmode',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  event = "VeryLazy",
  ft = { "org" },
  config = function(_, opts)
    require("orgmode").setup(opts)
  end,
  opts = {
    org_agenda_files = { "~/Nextcloud/org/*" },
    org_default_notes_file = "~/Nextcloud/org/refile.org",
  },
}
