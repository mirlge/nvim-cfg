local M = {
  defaults = {
    mode = "n",
  },
  keymaps = {
    --- system clipboard
    -- yank
    { "<Leader>y", '"+y', mode = { "n", "x" }, opts = { desc = "y, but to system clipboard" } },
    { "<Leader>Y", '"+Y', mode = { "n", "x" }, opts = { desc = "Y, but to system clipboard" } },

    -- paste
    {
      "<Leader>p",
      '"+p',
      mode = { "n", "x" },
      opts = {
        desc = "p, but from system clipboard",
      },
    },
    {
      "<Leader>P",
      '"+P',
      mode = { "n", "x" },
      opts = {
        desc = "P, but from system clipboard",
      },
    },
    {
      "<Leader>p",
      [["_dP]],
      mode = "x",
      opts = { desc = "Replace with yanked text without overwriting it" },
    },

    { "<Leader><Leader>", vim.cmd.so, opts = { desc = "Source the current file" } },

    {
      "<Leader>fn",
      function()
        local notes_dir = require("core")._config.notes_dir
        if vim.o.filetype ~= "ministarter" then
          vim.cmd.tabnew()
        end
        vim.cmd.tcd(notes_dir)
        require("oil").open(notes_dir)
      end,
      opts = { desc = "Open notes" },
    },
  },
}

function M.setup(keymap_defaults)
  local keymap_defaults = vim.tbl_extend("force", M.defaults, keymap_defaults or {})

  for _, keymap in ipairs(M.keymaps) do
    local keymap = vim.tbl_extend("force", keymap_defaults, keymap)
    vim.keymap.set(keymap.mode, keymap[1], keymap[2], keymap.opts)
  end
end

return M
