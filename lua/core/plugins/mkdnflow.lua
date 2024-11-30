return {
  'jakewvincent/mkdnflow.nvim',
  opts = {
    wrap = true,
    modules = {
      cmp = true,
      yaml = true,
    },
    links = {
      transform_explicit = function(text)
        text = text:gsub(" ", "-")
        text = text:lower()
        text = os.date('%Y%m%d%H%M_') .. text
        return (text)
      end,
    }
  },
}
