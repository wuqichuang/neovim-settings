-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap


-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<C-u>", "9k", {noremap = true, silent = true })
map("n", "<C-d>", "9j", {noremap = true, silent = true })

map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})

-- 分屏
map("n", "<A-h>", "<C-w>h", {noremap = true, silent = false })
map("n", "<A-j>", "<C-w>j", {noremap = true, silent = false })
map("n", "<A-k>", "<C-w>k", {noremap = true, silent = false })
map("n", "<A-l>", "<C-w>l", {noremap = true, silent = false })
map("n", "<A-o>", "<C-w>o", {noremap = true, silent = false }) -- close others

-- map("n", "<C-l>", "<C-w>>", {noremap = true, silent = false })
-- map("n", "<C-h>", "<cmd>vertical resize -2<CR>", {noremap = true, silent = false })
map("n", "<A-=>", "<C-w>=", {noremap = true, silent = false })

-- Telescope
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", {noremap = true, silent = false })
map("n", "<leader>f", "<cmd>Telescope find_files<cr>", {noremap = true, silent = false })
map("n", "<leader>g", "<cmd>Telescope live_grep<cr>", {noremap = true, silent = false })

-- nvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- bufferline 左右切换
map("n", "<C-h>", "<cmd>BufferLineCyclePrev<CR>", {noremap = true, silent = true })
map("n", "<C-l>", "<cmd>BufferLineCycleNext<CR>", {noremap = true, silent = true })


-- comment
-- see ./comment-config.lua