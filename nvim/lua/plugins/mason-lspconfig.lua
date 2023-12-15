return {
  "williamboman/mason-lspconfig.nvim",
  --"nvim-lspconfig",
  dependencies = { 'williamboman/mason.nvim' },
  config = function()
    require("mason-lspconfig").setup()
  end
}

