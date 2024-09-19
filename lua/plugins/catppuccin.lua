return {
	"catppuccin/nvim",
	name = "catppuccin",
	-- enabled=false(禁用插件)
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catppuccin")
		vim.o.background = "dark"
	end,
	setup = {
		flavour = "auto", -- latte, frappe, macchiato, mocha
		background = { -- :h background
			light = "latte",
			dark = "frappe",
		},
		transparent_background = true, -- disables setting the background color.
	},
}
