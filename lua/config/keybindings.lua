-- 设置leader键为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- 保存本地变量
local map = vim.api.nvim_set_keymap
-- 复用参数
local opt = { noremap = true, silent = true }

-- map('模式','按键','映射为XX',opt)

-- Alt + hjkl 在窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- dw删除当前光标所在单词
vim.api.nvim_set_keymap("n", "dw", "diw", { noremap = true, silent = true })

-- H 移动到行首，L 移动到行尾
map("n", "H", "^", opt)
map("n", "L", "g_", opt)

-- 一键退出
map("n", "q", ":q<CR>", opt)
map("n", "qq", ":q!<CR>", opt)

-- insert 模式下，跳到行首行尾
map("i", "<C-h>", "<ESC>I", opt)
map("i", "<C-l>", "<ESC>A", opt)

-- 上下滚动浏览(base中配置过hjkl,略)
map("n", "<C-j>", "4j", opt)
map("n", "<C-k>", "4k", opt)
-- 修改 Ctrl-u 和 Ctrl-d 的移动幅度 从默认的移动半瓶改为移动 9 行
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

-- python
map("n", "<leader>tp", '<cmd>TermExec cmd="python %"<cr>', { desc = "Run python codes" })

--lazygit
map("n", "<leader>tg", ":TermExec cmd='lazygit' direction=float<CR>", { desc = "Run lazygit" })

-- 开启shell
-- map("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "open term" })
-- map("n", "<leader>tt", '<cmd>TermExec cmd="clear"<cr>', { desc = "open term" })
vim.api.nvim_set_keymap(
	"n",
	"<leader>tt",
	"<cmd>lua open_terminal()<cr>",
	{ desc = "open term", noremap = true, silent = true }
)
function open_terminal()
	-- 执行TermExec命令
	vim.cmd('TermExec cmd="clear"')
	-- 确保缓冲区是可修改的
	vim.bo.modifiable = true
end
