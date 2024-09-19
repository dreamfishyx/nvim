return {
	"gen740/SmoothCursor.nvim",
	config = function()
		require("smoothcursor").setup({
			autostart = true, -- 自动启动光标动画
			cursor = "", -- 自定义光标符号
			texthl = "SmoothCursor", -- 设置光标的高亮组
			fancy = {
				enable = true, -- 启用Fancy效果
				head = { cursor = "●", texthl = "SmoothCursor" }, -- 设置头部样式
				body = {
					{ cursor = "●", texthl = "SmoothCursorBody" },
					{ cursor = "●", texthl = "SmoothCursorBody" },
					{ cursor = "•", texthl = "SmoothCursorBody" },
					{ cursor = ".", texthl = "SmoothCursorBody" },
				},
				tail = { cursor = ".", texthl = "SmoothCursorTail" }, -- 设置尾部样式
			},
			speed = 15, -- 光标移动速度
			intervals = 25, -- 光标刷新间隔
			priority = 10, -- 动画的优先级
			threshold = 2, -- 停止移动的阈值
		})
	end,
}
