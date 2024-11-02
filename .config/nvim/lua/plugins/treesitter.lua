return {
	-- ast parser/code highlighter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				auto_install = true,
				sync_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end
	},
	-- shows what block of code you're in at the top (by definition)
	{ "nvim-treesitter/nvim-treesitter-context" }
}
