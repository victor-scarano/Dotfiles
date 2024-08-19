return {
	{
		-- Displays completions from the lsp attached to the current buffer.
		"hrsh7th/cmp-nvim-lsp",

		-- Source for everything in the current buffer.
		"hrsh7th/cmp-buffer",

		-- Source for the vim command line.
		"hrsh7th/cmp-cmdline",

		-- Supplies cmp with path completions.
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
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
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
