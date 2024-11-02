return {
	-- fuzzy finder, filter, preview, pick
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				defaults = {
					border = {
						prompt = { 1, 1, 1, 1 },
						results = { 1, 1, 1, 1 },
						preview = { 1, 1, 1, 1 },
					},
					borderchars = {
						prompt = { " ", " ", "─", "│", "│", " ", "─", "└" },
						results = { "─", " ", " ", "│", "┌", "─", " ", "│" },
						preview = { "─", "│", "─", "│", "┬", "┐", "┘", "┴" },
					}
				}
			})

			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>f", builtin.find_files, {})
			vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>b", builtin.buffers, {})
		end
	},
	-- uses telescope for selection menus
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			local telescope = require("telescope")

			telescope.setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({})
					}
				}
			})

			telescope.load_extension("ui-select")
		end
	}
}
