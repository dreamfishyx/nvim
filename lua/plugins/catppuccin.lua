return {
	"catppuccin/nvim",
	name = "catppuccin",
	-- enabled=false(禁用插件)
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			--flavour = "auto",
			background = {
				light = "latte",
				dark = "mocha",
			},
			transparent_background = true,
		})
	end,
}
