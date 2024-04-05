local g = vim.g
local set = vim.keymap.set
local opt = { noremap = true, silent = true }

g.mapleader = " "
g.maplocalleader = " "

set("n", "<leader>-", "<cmd>split<cr>", opt)
set("n", "<leader>\\", "<cmd>vsplit<cr>", opt)

set("n", "<C-Left>", "<CMD>vertical resize -2<CR>", opt)
set("n", "<C-Down>", "<CMD>resize +2<CR>", opt)
set("n", "<C-Up>", "<CMD>resize -2<CR>", opt)
set("n", "<C-Right>", "<CMD>vertical resize +2<CR>", opt)
