return {
	{
		"morhetz/gruvbox",
		config = function()
			-- vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
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
		"Mofiqul/vscode.nvim",
		config = function()
			require("vscode").setup({
				trasparent = true,
				underline_links = true,
				group_overrides = {
					Normal = { bg = "#000000" },
				}
			})
			-- vim.cmd.colorscheme("vscode")
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
