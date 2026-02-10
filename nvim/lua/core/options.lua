local opt = vim.opt
--行号
opt.relativenumber = true
opt.number = true
--防止包裹
opt.wrap = false
--光标
opt.cursorline = true
--启用鼠标
opt.mouse:append("a")
--搜索
opt.ignorecase = true
opt.smartcase = true
--外观
opt.termguicolors = true
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
-- 系统剪贴板
opt.clipboard:append("unnamedplus")
