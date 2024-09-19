return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		config = function()
			-- 启用真彩色支持
			vim.opt.termguicolors = true
			require("bufferline").setup({
				options = {
					-- 自定义显示缓冲区编号的方式
					diagnostics_indicator = function(count, level)
						local icon = level:match("error") and " " or " "
						return " " .. icon .. count
					end,

					numbers = function(opts)
						-- 显示当前标签页编号和缓冲区序号
						return string.format(" %s/%s", vim.fn["tabpagenr"](), opts.ordinal)
					end,

					-- 左侧偏移，用于腾出空间显示侧边栏插件
					offsets = {
						{
							filetype = "NvimTree", -- 为 NvimTree 插件预留空间
							text = "File Explorer", -- 显示的文本为 File Explorer
							highlight = "Directory", -- 设置文本高亮组为 Directory
							text_align = "left", -- 将文本对齐到左侧
						},
					},
				},
			})
		end,
	},
}
