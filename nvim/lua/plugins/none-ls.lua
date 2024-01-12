return { -- wraps cli tools for formatting into kinda pseudo linters, to be used in the editor
	"nvimtools/none-ls.nvim", -- configure formatters & linters
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,

				null_ls.builtins.diagnostics.eslint_d,
			},
		})
		vim.keymap.set("n", "<leader>=", vim.lsp.buf.format, {})
	end,
}
