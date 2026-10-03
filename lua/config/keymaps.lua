-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set

map("n", "<C-d>", "<C-d>zz", { desc = "Move a half page down and center screen" })
map("n", "<C-u>", "<C-u>zz", { desc = "Move a half page up and center screen" })
map("n", "n", "nzzzv", { desc = "Search term and move to the next term and center screen" })
map("n", "N", "Nzzzv", { desc = "Search term and move to the previous term and center screen" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move visually selected lines up" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move visually selected lines down" })

-- greatest remap ever
map("x", "<leader>p", [["_dP]], { desc = "Keep yanked text in paste register" })
