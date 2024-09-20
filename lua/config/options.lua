vim.o.showmode = false

vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"

vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

vim.wo.number = true
vim.wo.relativenumber = true

vim.wo.cursorline = true

vim.wo.signcolumn = "yes"

vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true

vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.autoread = true
vim.bo.autoread = true

vim.o.autoindent = true
vim.bo.autoindent = true

vim.o.hlsearch = false

vim.o.incsearch = true

vim.o.cmdheight = 2

vim.o.autoread = true
vim.bo.autoread = true

vim.o.wrap = false
vim.wo.wrap = false

vim.o.whichwrap = "b,s,<,>,[,],h,l"

vim.o.hidden = true

vim.o.mouse = "a"

vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

vim.o.updatetime = 300

vim.o.timeoutlen = 500

vim.o.splitbelow = true
vim.o.splitright = true

vim.g.completeopt = "menu,menuone,noselect,noinsert"

vim.o.background = "light" --dark干扰主题配置
vim.o.termguicolors = true
vim.opt.termguicolors = true

vim.o.list = true
vim.o.listchars = "space:·"

vim.o.wildmenu = true

vim.o.pumheight = 10

vim.o.shortmess = vim.o.shortmess .. "c"

vim.o.showtabline = 2

vim.opt.guicursor = {
	"n:hor20-Cursor/lCursor",
	"i-ci-ve:ver25-Cursor/lCursor",
	"r-cr-o:ver25-Cursor/lCursor",
}
vim.cmd([[
  highlight Cursor guifg=#FFFFFF guibg=#00BFFF
  highlight lCursor guifg=#FFFFFF guibg=#00BFFF
  highlight CursorLine guibg=#2e2e2e
  highlight CursorLineNr guifg=#FFD700
]])

vim.opt.cursorline = true

vim.cmd([[set clipboard+=unnamedplus]])
