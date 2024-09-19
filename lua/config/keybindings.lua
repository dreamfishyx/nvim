-- 设置leader键为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- 保存本地变量
local map = vim.api.nvim_set_keymap
-- 复用参数
local opt = {noremap = true, silent = true }


-- map('模式','按键','映射为XX',opt)

-- Alt + hjkl 在窗口之间跳转
map('n', '<A-h>', '<C-w>h', opt)
map('n', '<A-j>', '<C-w>j', opt)
map('n', '<A-k>', '<C-w>k', opt)
map('n', '<A-l>', '<C-w>l', opt)

-- dw删除当前光标所在单词
vim.api.nvim_set_keymap("n", "dw", "diw", {noremap = true, silent = true})


-- H 移动到行首，L 移动到行尾
map('n', 'H', '^', opt)
map('n', 'L', 'g_', opt)

-- 一键退出
map('n', 'q', ':q<CR>', opt)
map('n', 'qq', ':q!<CR>', opt)


-- insert 模式下，跳到行首行尾
map("i", "<C-h>", "<ESC>I", opt)
map("i", "<C-l>", "<ESC>A", opt)


-- 上下滚动浏览(base中配置过hjkl,略)
--map('n', '<C-j>', '4j', opt)
--map('n', '<C-k>', '4k', opt)
-- 修改 Ctrl-u 和 Ctrl-d 的移动幅度 从默认的移动半瓶改为移动 9 行
--map('n', '<C-u>', '9k', opt)
--map('n', '<C-d>', '9j', opt)




-- nvim-tree
-- alt + m 键打开关闭tree
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)

-- bufferline
-- 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
-- 关闭
--"moll/vim-bbye"
map("n", "<C-w>", ":Bdelete!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)

