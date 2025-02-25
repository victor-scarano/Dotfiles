-- todo: figure out how to make underscores not be insignificant punctuation
return {
	"chrisgrieser/nvim-spider",
	lazy = true,
	config = function()
		require("spider").setup({ skipInsignificantPunctuation = true })
	end,
	keys = {
		{
			"w",
			"<cmd>lua require('spider').motion('w')<CR>",
			{ desc = "Spider-w" }
		},
		{
			"e",
			"<cmd>lua require('spider').motion('e')<CR>",
			mode = { "n", "o", "x" },
		},
		{
			"b",
			"<cmd>lua require('spider').motion('b')<CR>",
			{ desc = "Spider-b" }
		},
	}
}
