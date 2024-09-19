return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		cmd = { "ToggleTerm", "TermExec" },
		direction = "float",
		shading_factor = 2,
		size = 10,
		highlights = {
			Normal = { link = "Normal" },
			NormalNC = { link = "NormalNC" },
			NormalFloat = { link = "NormalFloat" },
			FloatBorder = { link = "FloatBorder" },
			StatusLine = { link = "StatusLine" },
			StatusLineNC = { link = "StatusLineNC" },
			WinBar = { link = "WinBar" },
			WinBarNC = { link = "WinBarNC" },
		},
		float_opts = { border = "rounded" },
	},
}
