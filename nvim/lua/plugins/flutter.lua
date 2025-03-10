return {
	"akinsho/flutter-tools.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
	vim.keymap.set("n", "<leader>fl", ":Telescope flutter commands<CR>")
  end,
}
