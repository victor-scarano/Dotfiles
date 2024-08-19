return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				mode = "tabpages",
				style_preset = bufferline.style_preset.default,
				indicator = { style = "underline" },
				buffer_close_icon = "",
				close_icon = "",
				tab_size = 14,
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Exporer",
						text_align = "center",
						separator = true
					}
				}
			}
		})
	end
}
