-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Make it rain!" })

--which-key.nvim
local wk = require("which-key")
wk.add({
  { "<leader>B", group = "PBreakpoints" },
})

-- Add newline without going into insert mode
vim.keymap.set("n", "<C-CR>", "o<Esc>")
vim.keymap.set("n", "<S-CR>", "O<Esc>")

-- Centering the cursor when scrolling
vim.keymap.set("n", "<C-d>", "<C-d> zz")
vim.keymap.set("n", "<C-u>", "<C-u> zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- Go if err != nil automatically
vim.keymap.set("n", "<f2>", "A\nif err != nil {\nreturn err\n}<Esc>")
