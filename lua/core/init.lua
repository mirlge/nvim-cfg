local M = {}

M.helpers = require("core.helpers")

local keymaps = require("core.keymaps")
M.keymaps = keymaps.keymaps

local plugins = require("core.plugins")
M.plugins = plugins.plugins

function M.setup()
  M.helpers.transparency()

  require("core.set")

  keymaps.setup()

  plugins.setup()
end

return M
