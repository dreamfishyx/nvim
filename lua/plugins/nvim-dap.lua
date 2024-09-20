return {
	-- nvim-dap: Debug Adapter Protocol
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			-- nvim-dap-ui: 用户界面
			"rcarriga/nvim-dap-ui",
			-- nvim-nio: 新的依赖
			"nvim-neotest/nvim-nio",
			-- mason: 安装DAP适配器
			-- "williamboman/mason.nvim",
			"jay-babu/mason-nvim-dap.nvim",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			-- 启动 nvim-dap-ui
			dapui.setup()

			-- 当调试会话开始时，自动打开 UI，结束时自动关闭 UI
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end

			-- 配置 C++ 调试

			local dap = require("dap")
			dap.adapters.gdb = {
				type = "executable",
				command = "gdb",
				args = { "--interpreter=dap", "--eval-command", "set print pretty on" },
			}

			dap.configurations.cpp = {
				{
					name = "gdb debug",
					type = "gdb",
					request = "launch",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
					cwd = "${workspaceFolder}",
					stopAtBeginningOfMainSubprogram = false,
				},
			}

			-- c
			dap.configurations.c = dap.configurations.cpp

			-- 配置 Python 调试
			dap.adapters.py = {
				type = "executable",
				command = "/opt/anaconda/bin/python", -- 修改为你系统中的 Python 路径
				args = { "-m", "debugpy.adapter" },
			}

			dap.configurations.python = {
				{
					name = "python debug",
					type = "python",
					request = "launch",
					program = "${file}",
					pythonPath = function()
						return "/opt/anaconda/bin/python" -- 修改为实际的 Python 路径
					end,
				},
			}

			-- 安装 C++ 和 Python 的 DAP 适配器
			require("mason").setup()
			require("mason-nvim-dap").setup({
				ensure_installed = { "cppdbg", "debugpy" },
				automatic_installation = true,
			})
		end,
	},
}
