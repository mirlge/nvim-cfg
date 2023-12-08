return {
  'chipsenkbeil/distant.nvim',
  branch = 'v0.3',
  config = function(_, opts)
    require("distant"):setup(opts)

    vim.cmd.DistantInstall()
  end,
  opts = {
    -- Applies Chip's personal settings to every machine you connect to
    --
    -- 1. Ensures that distant servers terminate with no connections
    -- 2. Provides navigation bindings for remote directories
    -- 3. Provides keybinding to jump into a remote file's parent directory
    --['*'] = require('distant.settings').chip_default()
  },
  enabled = false, -- distant.nvim can't download a compatible distant build
}
