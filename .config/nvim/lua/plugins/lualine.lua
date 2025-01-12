-- custom status line

local function mode(ident)
	local modes = {
		["NORMAL"] = "NOR",
		["INSERT"] = "INS",
		["VISUAL"] = "VIS",
		["V-LINE"] = "V-L",
		["V-BLOCK"] = "V-B",
		["REPLACE"] = "REP",
		["COMMAND"] = "CMD",
		["TERMINAL"] = "TERM",
		["EX"] = "EX",
		["SELECT"] = "SEL",
		["S-LINE"] = "S-L",
		["S-BLOCK"] = "S-B",
		["OPERATOR"] = "OPR",
		["MORE"] = "MORE",
		["CONFIRM"] = "CONF",
		["SHELL"] = "SH",
		["MULTICHAR"] = "MCHR",
		["PROMPT"] = "PRMT",
		["BLOCK"] = "BLK",
		["FUNCTION"] = "FN",
	}
	return modes[ident] or ident
end

local palette = require("github-theme.palette").load("github_dark_default")

gray = { fg = palette.white.base, bg = palette.black.bright, gui = "bold" }
black = { fg = palette.white.base, bg = palette.black.default }

local theme = {
	normal = {
		a = { fg = palette.black.base, bg = palette.fg.default, gui = "bold" },
		b = black,
		c = black,
	},
	insert = {
		a = { fg = palette.black.base, bg = palette.blue.bright, gui = "bold" },
		b = black,
		c = black,
	},
	visual = {
		a = { fg = palette.black.base, bg = palette.green.bright, gui = "bold" },
		b = black,
		c = black,
	},
	replace = {
		a = { fg = palette.black.base, bg = palette.red.bright, gui = "bold" },
		b = black,
		c = black,
	},
	inactive = {
		a = black,
		b = black,
		c = black,
	},
}

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = theme,
			section_separators = { "" },
			component_separators = { "" },
			globalstatus = true,
			refresh = { statusline = 1 }
		},
		sections = {
			lualine_a = { { "mode", fmt = mode } },
			lualine_b = { "diff", "diagnostics" },
			lualine_c = { "filename" },
			lualine_x = {},
			lualine_y = { "fileformat" },
			lualine_z = { "location" },
		},
	}
}
