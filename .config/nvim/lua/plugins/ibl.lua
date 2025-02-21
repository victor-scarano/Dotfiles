-- indentation guides
return {
	"lukas-reineke/indent-blankline.nvim",
	config = function()
		require("ibl").setup({
			indent = { char = "│" }, -- alternate chars: '┃' and '▏'
			scope = { enabled = false },
		})
	end
}

