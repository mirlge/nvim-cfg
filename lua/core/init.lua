local M = {}

M.helpers = require("core.helpers")

local keymaps = require("core.keymaps")
M.keymaps = keymaps.keymaps

M.plugins = require("core.plugins")

function M.setup(opts)
  local opts = opts or {}

  M.helpers.transparency()

  if opts.standalone then
    vim.g.mapleader = " "
    vim.g.maplocalleader = ","
  end

  require("core.set")

  keymaps.setup()

  if opts.standalone then
    require("core.lazy")
  end

  require("core.lsp")
end

return M
