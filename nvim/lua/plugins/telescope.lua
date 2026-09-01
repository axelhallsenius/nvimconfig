return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"BurntSushi/ripgrep",
      "nvim-telescope/telescope-ui-select.nvim",
		},
		config = function()
			local builtin = require("telescope.builtin")
      local pickers = require("telescope.pickers")
      local finders = require("telescope.finders")
      local conf = require("telescope.config").values
      local actions = require("telescope.actions")

			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
      local function open_terminal()
        vim.cmd("term")
      end

      -- term picker function
      local function term_picker(opts)
        opts = opts or {}
        pickers.new(opts, {
          prompt_title = "Open Terminal",
          finder = finders.new_table({
            results = { "Open Terminal" },
          }),
          sorter = conf.generic_sorter(opts),
          attach_mappings = function(prompt_bufnr, _)
            actions.select_default:replace(function()
              actions.close(prompt_bufnr)
              open_terminal()
            end)
            return true
          end,
        }):find()
      end

      -- keybinding for the terminal picker
      vim.keymap.set("n", "<leader>ft", function()
        term_picker()
      end, { desc = "Open Terminal Picker" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
