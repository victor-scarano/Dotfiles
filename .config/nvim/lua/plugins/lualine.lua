-- custom status line

local function mode(ident)
	local modes = {
		["NORMAL"] = "NOR",
		["INSERT"] = "INS",
		["VISUAL"] = "VIS",
		["V-LINE"] = "VL",
		["V-BLOCK"] = "VB",
		["REPLACE"] = "REP",
		["COMMAND"] = "CMD",
		["TERMINAL"] = "TERM",
		["EX"] = "EX",
		["SELECT"] = "SEL",
		["S-LINE"] = "SL",
		["S-BLOCK"] = "SB",
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

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = "catppuccin",
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
