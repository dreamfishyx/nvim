return {
	"hrsh7th/cmp-cmdline",
	config = function()
		local cmp = require("cmp")
		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline({
				["<C-y>"] = {
					c = cmp.mapping.confirm({ select = false }),
				},
			}),
			sources = cmp.config.sources({
				{ name = "path" },
			}, {
				{ name = "cmdline" },
			}),
			matching = { disallow_symbol_nonprefix_matching = false },
		})
	end,
}
