return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",
	},
	config = function()
		require("neo-tree").setup({ window = { width = 26 } })
		vim.keymap.set("n", "<leader><tab>", "<cmd>Neotree toggle<CR>")
		vim.keymap.set("n", "<leader><S-tab>", "<cmd>Neotree<CR>")
	end
}
