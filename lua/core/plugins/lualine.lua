return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      globalstatus = true,
    },
    sections = {
      lualine_a = { {
        'buffers',
        filetype_names = {
          oil = 'File Explorer'
        },
        use_mode_colors = true,
      } },
      lualine_b = { { 'branch', use_mode_colors = false }, 'diff', 'diagnostics' },
      lualine_c = { 'overseer' },
      lualine_y = { 'filesize' }
    },
  },
}
