-- delete current buffer
vim.keymap.set("n", "<leader>q", ":bdelete<CR>")
-- show lsp hover info
vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, {})
-- lsp go to definition
vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, {})
-- lsp code actions
vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, {})

-- removes search highlights after moving the cursor out of the highlighted text
vim.api.nvim_create_autocmd("CursorMoved", {
	group = vim.api.nvim_create_augroup("auto-hlsearch", { clear = true }),
	callback = function()
		if vim.v.hlsearch == 1 and vim.fn.searchcount().exact_match == 0 then
			vim.schedule(function()
				vim.cmd.nohlsearch()
			end)
		end
	end
})
