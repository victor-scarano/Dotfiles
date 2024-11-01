return {
	{
		-- displays completions from the lsp attached to the current buffer
		"hrsh7th/cmp-nvim-lsp",
		-- source for everything in the current buffer
		"hrsh7th/cmp-buffer",
		-- source for the vim command line
		"hrsh7th/cmp-cmdline",
		-- supplies cmp with path completions
		"hrsh7th/cmp-path",
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			cmp.setup({
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered()
				},
				mapping = cmp.mapping.preset.insert({
					["<Tab>"] = cmp.mapping.confirm({ select = true })
				}),
				sources = cmp.config.sources(
					{ { name = "nvim_lsp" } },
					{ { name = "buffer" } }
				)
			})
		end
	}
}
