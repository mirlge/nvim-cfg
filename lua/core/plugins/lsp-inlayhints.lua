return {
  "lvimuser/lsp-inlayhints.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
  },
  opts = {},
  config = function(_, opts)
    require("lsp-inlayhints").setup(opts)

    vim.api.nvim_create_autocmd("LspAttach", {
      group = "UserLspConfig",
      callback = function(args)
        if not (args.data and args.data.client_id) then
          return
        end

        require("lsp-inlayhints").on_attach(vim.lsp.get_client_by_id(args.data.client_id), args.buf)
      end,
    })
  end,
}
