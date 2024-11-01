return {
	-- helps to manage crates.io dependencies
	{
		"saecki/crates.nvim",
		tag = "stable",
		config = function()
			require("crates").setup()
		end,
	},
	-- rust file detection, syntax highlighting, formatting, Syntastic integration
	-- not enabled because i get all the same functionality from my lsp
	{
		"rust-lang/rust.vim",
		init = function ()
			-- vim.g.rustfmt_autosave = 1
		end
	},
	-- configurable + rust specific nvimlsp config
	{
		"simrat39/rust-tools.nvim",
		config = function()
			require("rust-tools").setup()
		end
	}
}
