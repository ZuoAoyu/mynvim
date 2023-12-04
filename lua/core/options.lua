local opt = vim.opt

-- creates a backup file
opt.backup = false

-- allows neovim to access the system clipboard
opt.clipboard = "unnamedplus"
-- opt.clipboard:append("unnamedplus")

-- more space in the neovim command line for displaying messages
opt.cmdheight = 2

-- mostly just for cmp
-- 启用弹出式菜单，即使只有一个匹配
-- 防止在菜单中自动选择第一个匹配项
opt.completeopt = { "menuone", "noselect" }

-- 所有文本将正常显示，没有任何隐藏
-- so that `` is visible in markdown files
opt.conceallevel = 0

-- the encoding written to a file
opt.fileencoding = "utf-8"

-- highlight all matches on previous search pattern
opt.hlsearch = true

-- ignore case in search patterns
opt.ignorecase = true

-- allow the mouse to be used in neovim
-- opt.mouse:append("a")
opt.mouse = "a"

-- 关闭鼠标右键菜单
opt.mousemodel = "extend"

-- pop up menu height
opt.pumheight = 10

-- always show tabs
opt.showtabline = 2

-- smart case
opt.smartcase = true

-- make indenting smarter again
opt.smartindent = true
opt.autoindent = true

-- force all horizontal splits to go below current window
opt.splitbelow = true

-- force all vertical splits to go to the right of current window
opt.splitright = true

-- creates a swapfile
opt.swapfile = false

-- set term gui colors (most terminals support this)
opt.termguicolors = true

-- time to wait for a mapped sequence to complete (in milliseconds)
opt.timeoutlen = 1000

-- enable persistent undo
opt.undofile = true

-- faster completion (4000ms default)
opt.updatetime = 300

-- if a file is being edited by another program 
-- (or was written to file while editing with another program), 
-- it is not allowed to be edited
opt.writebackup = false

-- convert tabs to spaces
opt.expandtab = true

-- the number of spaces inserted for each indentation
opt.shiftwidth = 4

-- insert 4 spaces for a tab
opt.tabstop = 4

-- highlight the current line
opt.cursorline = true

-- set numbered lines
opt.number = true

-- set relative numbered lines
opt.relativenumber = true

-- set number column width to 2 {default 4}
opt.numberwidth = 4

-- always show the sign column, otherwise it would shift the text each time
-- 在行号所在列之前, 添加一列, 用于像vscode一样显示诊断符号, 如在有问题的代码行前显示感叹号
opt.signcolumn = "yes"

-- 不折行 display lines as one long line
opt.wrap = false

-- 在当前屏幕顶部和底部边缘之间保留的行数
opt.scrolloff = 8
opt.sidescrolloff = 8

-- the font used in graphical neovim applications
opt.guifont = "monospace:h14"

-- 显示一条竖线
opt.colorcolumn = "79"

-- 在状态栏中以更简洁的方式显示消息
opt.shortmess:append "c"

-- 可以用方向键跨行移动
vim.cmd "set whichwrap+=<,>,[,],h,l"

-- 带有符号`-`的单词不要被换行分割
vim.cmd [[set iskeyword+=-]]

-- 取消自动注释(我的理解: 在一行注释末尾按回车, 下一行前会被自动添加注释符号)
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work

-- 主题
vim.cmd[[colorscheme tokyonight-day]]

