-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Make it rain!" })

-- For colemak remapping
vim.keymap.set({ "n", "v" }, "j", "k")
vim.keymap.set({ "n", "v" }, "k", "j")
-- vim.keymap.set({ "n", "v" }, "h", "l")
-- vim.keymap.set({ "n", "v" }, "l", "h")

-- Add newline without going into insert mode
vim.keymap.set("n", "<C-CR>", "o<Esc>")
vim.keymap.set("n", "<S-CR>", "O<Esc>")

-- Centering the cursor when scrolling
vim.keymap.set("n", "<C-d>", "<C-d> zz")
vim.keymap.set("n", "<C-u>", "<C-u> zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- Insert UUID
vim.keymap.set("n", "<leader>iu", "i<c-r>=trim(system('uuidgen'))<CR><esc>", { desc = "Insert UUID" })
vim.keymap.set("x", "<leader>iu", "c<c-r>=trim(system('uuidgen'))<CR><esc>", { desc = "Insert UUID" })

-- -- tiny-code-action.nvim
-- vim.keymap.set({ "n", "x" }, "<leader>cs", function()
--   require("tiny-code-action").code_action({})
-- end, { noremap = true, silent = true, desc = "Code Actions" })

--which-key.nvim
local wk = require("which-key")
wk.add({
  { "<leader>B", group = "PBreakpoints" },
  { "<leader>i", group = "Insert misc stuff" },
  { "<leader>ca" },
})
