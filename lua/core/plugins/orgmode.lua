return {
  'nvim-orgmode/orgmode',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  event = "VeryLazy",
  config = function(_, opts)
    require("orgmode").setup_ts_grammar()
    require("orgmode").setup(opts)
  end,
  opts = {
    org_agenda_files = { "~/Nextcloud/org/*" },
    org_default_notes_file = "~/Nextcloud/org/refile.org",
  },
}
