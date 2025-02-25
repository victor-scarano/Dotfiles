return {
	-- completion engine
	{
		"hrsh7th/nvim-cmp",
		config = function()
			vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "single" })
			vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "single" })

			local cmp = require("cmp")
			cmp.setup({
				window = {
					completion = cmp.config.window.bordered({ border = "single" }),
					documentation = cmp.config.window.bordered({ border = "single" }),
				},
				mapping = cmp.mapping.preset.insert({
					["<Tab>"] = cmp.mapping.confirm({ select = true }),
					-- TODO: add scroll doc key mappings
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "buffer" },
					{ name = "nvim_lsp_signature_help" }
					-- { name = "cmdline" },
					-- { name = "path" }
				})
			})
		end
	},
	-- displays completions from the lsp attached to the current buffer
	{ "hrsh7th/cmp-nvim-lsp" },
	-- source for everything in the current buffer
	{ "hrsh7th/cmp-buffer" },
	-- source for the command line
	{ "hrsh7th/cmp-cmdline" },
	-- supplies cmp with path completions
	{ "hrsh7th/cmp-path" },
	-- what exactly does this do?
	{ "hrsh7th/cmp-nvim-lsp-signature-help" },
}
