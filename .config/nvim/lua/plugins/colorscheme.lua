return {
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
			-- ayu.colorscheme()
		end
	},
	{
		"savq/melange-nvim",
		config = function()
			-- vim.cmd.colorscheme("melange")
		end
	}
}
