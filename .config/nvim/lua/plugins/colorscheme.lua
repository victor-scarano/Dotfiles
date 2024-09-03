local colorschemes = {
	{
		"morhetz/gruvbox",
		config = function()
			vim.g.gruvbox_contrast_dark = "hard"
			vim.g.gruvbox_contrast_light = "hard"
			vim.cmd.colorscheme("gruvbox")
			vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
		end
	},
	{
		"wincent/base16-nvim",
		config = function()
			vim.cmd.colorscheme("base16-irblack")
		end
	},
	{
		"Shatur/neovim-ayu",
		config = function()
			local ayu = require("ayu")
			ayu.setup({
				mirage = false,
				terminal = true,
				overrides = {},
			})
			ayu.colorscheme()
		end
	},
	{
		"savq/melange-nvim",
		config = function()
			vim.cmd.colorscheme("melange")
		end
	}
}

return colorschemes[1]

