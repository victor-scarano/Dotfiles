return {
	-- morhetz/gruvbox
	-- wincent/base16-nvim
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
			})
			vim.cmd.colorscheme("catppuccin")
		end
	},
	{
		"projekt0n/github-nvim-theme",
		name = "github-theme",
		config = function()
			require("github-theme").setup({
				options = {
					transparent = true
				}
			})

			-- vim.cmd.colorscheme("github_dark_default")
		end
	},
}
