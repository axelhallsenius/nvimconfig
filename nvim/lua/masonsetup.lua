require("neovim/nvim-lspconfig").setup()
require("hrsh7th/cmp-nvim-lsp").setup()
require("hrsh7th/cmp-buffer").setup()
require("hrsh7th/cmp-path").setup()
require("hrsh7th/cmp-cmdline").setup()
require("hrsh7th/nvim-cmp").setup()

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
  -- The first entry (without a key) will be the default handler
  -- and will be called for each installed server that doesn't have
  -- a dedicated handler.
  function (server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup {}
  end,
  -- Next, you can provide a dedicated handler for specific servers.
  -- For example, a handler override for the `rust_analyzer`:
}
