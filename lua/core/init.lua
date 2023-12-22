local M = {}

M.helpers = require("core.helpers")

local keymaps = require("core.keymaps")
M.keymaps = keymaps.keymaps

M.plugins = require("core.plugins")

function M.setup(opts)
  local opts = opts or {}

  if opts.standalone then
    M.helpers.transparency()

    require("core.set")
  end

  keymaps.setup()

  require("core.lsp")

  if opts.standalone then
    require("core.lazy")
  end
end

return M
