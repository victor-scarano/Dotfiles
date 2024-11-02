-- file explorer, replacement for netrw
return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			view = {
				width = 26,
			}
		})
		vim.keymap.set("n", "<leader><tab>", "<cmd>NvimTreeToggle<CR>")
		vim.keymap.set("n", "<leader><S-tab>", "<cmd>NvimTreeFocus<CR>")
	end
}
