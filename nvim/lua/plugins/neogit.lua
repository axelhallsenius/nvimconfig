return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = true
  },
  --config = function()
   -- local neogit = require("neogit")

    --vim.keymap.set('n', '<leader>gt', neogit.open(), {})
    --vim.keymap.set('n', '<leader>gc', neogit.open({ "commit" }), {})
  --end,
}
