return {
  "nvzone/floaterm",

  dependencies = {
    "nvzone/volt",
  },

  config = function()
    local map = vim.keymap.set

    map("n", "<F5>", ":FloatermToggle<CR>", { noremap = true, silent = true})
    map("t", "<F5>", "<C-\\><C-n>:FloatermToggle<CR>", { noremap = true, silent = true})
  end
}
