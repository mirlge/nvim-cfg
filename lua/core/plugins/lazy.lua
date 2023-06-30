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


-- More plugin configuration
if corePlugins.null_ls.enabled == nil or corePlugins.null_ls.enabled then
  require("core.plugins.null-ls")
end
if corePlugins.norg.enabled == nil or corePlugins.norg.enabled then
  require("core.plugins.norg")
end
if corePlugins.orgmode.enabled == nil or corePlugins.orgmode.enabled then
  require("core.plugins.orgmode")
end
if corePlugins.project.enabled == nil or corePlugins.project.enabled then
  require("core.plugins.project")
end
if corePlugins.neodev.enabled == nil or corePlugins.neodev.enabled then
  require("core.plugins.neodev")
end
if corePlugins.which_key.enabled == nil or corePlugins.which_key.enabled then
  require("core.plugins.which-key")
end
if corePlugins.lsp_zero.enabled == nil or corePlugins.lsp_zero.enabled then
  require("core.plugins.lsp")
end
