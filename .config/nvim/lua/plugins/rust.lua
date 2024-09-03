return {
	{
		"saecki/crates.nvim",
		tag = "stable",
		config = function()
			require("crates").setup()
		end,
	},
	{
		"rust-lang/rust.vim",
		init = function ()
			-- vim.g.rustfmt_autosave = 1
		end
	},
	{
		"simrat39/rust-tools.nvim",
		config = function()
			-- require("rust-tools").setup()
		end
	}
}
