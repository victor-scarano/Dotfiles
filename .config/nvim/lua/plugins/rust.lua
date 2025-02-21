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
	-- is this even doing anything?
	{ "rust-lang/rust.vim"},
}
