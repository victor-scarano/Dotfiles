return {
	{ "nvim-treesitter/nvim-treesitter-context" },
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

			-- For some reason the treesitter highlighting for these highlight groups
			-- look ugly, and doesn't match the currently active colorscheme.
			require("nvim-treesitter")
			vim.api.nvim_set_hl(0, "@punctuation.delimiter", { link = nil })
			vim.api.nvim_set_hl(0, "@punctuation.bracket", { link = nil })
			vim.api.nvim_set_hl(0, "@constant", { link = nil })
			vim.api.nvim_set_hl(0, "@number", { link = nil })
			vim.api.nvim_set_hl(0, "@number.float", { link = nil })
			vim.api.nvim_set_hl(0, "@boolean", { link = nil })
			vim.api.nvim_set_hl(0, "@property", { link = nil })
		end
	}
}
