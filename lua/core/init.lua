local M = {}

M.helpers = require("core.helpers")

local keymaps = require("core.keymaps")
M.keymaps = keymaps.keymaps

M.plugins = require("core.plugins")

function M.setup()
  M.helpers.transparency()

  require("core.set")

  keymaps.setup()

  require("core.plugins.lazy")
  require("core.plugins.after")

  require("core.lsp")
end

return M
