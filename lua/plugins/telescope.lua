return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{
			"nvim-telescope/telescope-live-grep-args.nvim",
		},
	},
	config = function()
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				dynamic_preview_title = true,
			},
		})
		telescope.load_extension("live_grep_args")
	end,
}
