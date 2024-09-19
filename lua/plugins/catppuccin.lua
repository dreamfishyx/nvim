return {
	"catppuccin/nvim",
	name = "catppuccin",
	-- enabled=false(禁用插件)
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catppuccin")
		vim.o.background = "light" -- 可能options.lua中配置被覆盖了
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
