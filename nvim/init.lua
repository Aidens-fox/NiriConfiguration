require("config.lazy")
require("plugins.core")
require("ibl").setup()
local opt = vim.opt
--行号
opt.relativenumber = true
opt.number = true
--防止包裹
opt.wrap = false
--十字架光标
opt.cursorline = true
opt.cursorcolumn = true
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

require('lualine').setup({
options = {
theme = 'gruvbox', 
component_separators = { left = '|', right = '|' },
section_separators = { left = '', right = '' },
globalstatus = true, 
},
})
