local builtin = require "telescope.builtin"
local telescope = require "telescope"

--local actions = require "telescope.actions"
local trouble = require "trouble.providers.telescope"

vim.keymap.set('n', '<Leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<Leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Leader>bf', builtin.buffers, {})
vim.keymap.set('n', '<Leader>hf', builtin.help_tags, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
--vim.keymap.set('n', '<Leader>ps', function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end, {})
vim.keymap.set('n', '<Leader>kf', builtin.keymaps, {})

telescope.setup {
  defaults = {
    mappings = {
      i = { ["<C-t>"] = trouble.open_with_trouble },
      n = { ["<C-t>"] = trouble.open_with_trouble },
    }
  }
}
