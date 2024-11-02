return {
	-- completion engine
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			cmp.setup({
				window = {
					--[[
					completion = {
						winhighlight = "Normal:Normal,FloatBorder:FloatBorder", -- "Search:None"
					},
					documentation = {
						winhighlight = "Normal:Normal,FloatBorder:FloatBorder", -- "Search:None"
					},
					--]]
					completion = cmp.config.window.bordered({
						winhighlight = "Normal:Normal,FloatBorder:FloatBorder", -- "Search:None"
					}),
					documentation = cmp.config.window.bordered({
						winhighlight = "Normal:Normal,FloatBorder:FloatBorder", -- "Search:None"
					})
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
	{
		"hrsh7th/cmp-nvim-lsp-signature-help"
	}
}
