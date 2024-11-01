return {
	{
		"morhetz/gruvbox",
		config = function()
			-- vim.cmd.colorscheme("gruvbox")
		end
	},
	{
		"wincent/base16-nvim",
		name = "base16-irblack",
		config = function()
			-- vim.cmd.colorscheme("base16-irblack")
		end
	},
	{
		"projekt0n/github-nvim-theme",
		name = "github-theme",
		config = function()
			require('github-theme').setup({
				options = {
					transparent = true
				}
			})

			vim.cmd.colorscheme("github_dark_default")
		end
	}
}
