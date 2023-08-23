local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local corePlugins = require("core.plugins")

if corePlugins.lazy.enabled == false then
  corePlugins.lazy.enabled = true
end
local plugins = {}
for _, v in pairs(corePlugins) do
  table.insert(plugins, v)
end
require("lazy").setup(plugins)

require("core.plugins.after")
