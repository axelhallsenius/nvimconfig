return { -- wraps cli tools for formatting into kinda pseudo linters, to be used in the editor
	"nvimtools/none-ls.nvim", -- configure formatters & linters
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
        require("none-ls.diagnostics.eslint_d"),
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
			},
		})
		vim.keymap.set("n", "<leader>=", vim.lsp.buf.format, {})
	end,
}
