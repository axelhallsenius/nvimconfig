return {
	"phaazon/hop.nvim",
	branch = "v2", -- optional but strongly recommended
	config = function()
		-- you can configure Hop the way you like here; see :h hop-config
		local hop = require("hop")

		hop.setup({ keys = "asdfghjklqwertyuiop" })

		local directions = require("hop.hint").HintDirection
		vim.keymap.set({"n", "v"}, "f", function()
			hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
		end, { remap = true })
		vim.keymap.set({"n", "v"}, "F", function()
			hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
		end, { remap = true })
		vim.keymap.set({"n", "v"}, "t", function()
			hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
		end, { remap = true })
		vim.keymap.set({"n", "v"}, "T", function()
			hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
		end, { remap = true })
		vim.keymap.set({"n", "v"}, "ä", function()
			hop.hint_char1()
		end, { remap = true })
	end,
}
