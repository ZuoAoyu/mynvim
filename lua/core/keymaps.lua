local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
-- local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- ---------- 插件 ---------- ---
-- nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- ---------- 正常模式 ---------- ---
-- Better window navigation 在各个子窗口之间移动
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- 窗口
keymap("n", "<leader>sv", "<C-w>v", opts) -- 水平新增窗口 
keymap("n", "<leader>sh", "<C-w>s", opts) -- 垂直新增窗口

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- 取消高亮
keymap("n", "<leader>nh", ":nohl<CR>", opts)

-- Navigate buffers 切换buffer
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- ---------- 插入模式 ---------- ---
keymap("i", "jk", "<ESC>", opts)

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)
-- 第2组快捷键
-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- 可视模式下, 选中多行后按`p`, 意思是"删除(原来的内容)并粘贴(新内容)"
keymap("v", "p", '"_dP', opts)

-- Stay in indent mode
-- 给原本的`<`和`>`命令附增`gv`, 重新选择之前选中的内容
-- 即调整缩进级别后, 依然保持代码的选中状态
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

