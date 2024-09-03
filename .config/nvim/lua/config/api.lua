vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		client.server_capabilities.semanticTokensProvider = nil
	end
});

-- For some reason the treesitter highlighting for these highlight groups
-- look ugly, and doesn't match the currently active colorscheme.
vim.api.nvim_create_autocmd("ColorScheme", {
	callback = function()
		vim.api.nvim_set_hl(0, "@punctuation.delimiter", { link = nil })
		vim.api.nvim_set_hl(0, "@punctuation.bracket", { link = nil })
		vim.api.nvim_set_hl(0, "@constant", { link = nil })
		vim.api.nvim_set_hl(0, "@number", { link = nil })
		vim.api.nvim_set_hl(0, "@number.float", { link = nil })
		vim.api.nvim_set_hl(0, "@boolean", { link = nil })
		vim.api.nvim_set_hl(0, "@property", { link = nil })
	end
})
