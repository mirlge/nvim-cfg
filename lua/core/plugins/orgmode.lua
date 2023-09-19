return {
  'nvim-orgmode/orgmode',
  config = function(_, opts)
    require("orgmode").setup(opts)
    require("orgmode").setup_ts_grammar()
  end,
  opts = {
    org_agenda_files = { "~/Nextcloud/org/*" },
    org_default_notes_file = "~/Nextcloud/org/refile.org",
  },
}
