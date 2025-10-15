return {
  'jakewvincent/mkdnflow.nvim',
  dependencies = { "OXY2DEV/foldtext.nvim" },
  opts = {
    wrap = true,
    modules = {
      cmp = true,
      yaml = true,
    },
    links = {
      transform_explicit = function(text)
        text = text:gsub(" ", "_")
        text = text:lower()
        return (text)
      end,
    },
    mappings = { MkdnToggleToDo = false },
  },
}
