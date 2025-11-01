vim.g.mapleader = " "

-- File navigation
vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>n", ":cd $HOME/notes | e .<CR>", { desc = "Go to notes" })
vim.keymap.set("n", "<leader>pr", ":cd $HOME/projects | e .<CR>", { desc = "Go to projects" })

-- Number toggles
local function toggle_nums()
  if vim.wo.number then
    vim.wo.number = false
  else
    vim.wo.number = true
  end
end

local function toggle_rel_nums()
  if vim.wo.relativenumber then
    vim.wo.relativenumber = false
  else
    vim.wo.relativenumber = true
  end
end

vim.keymap.set("n", "<leader>nu", toggle_nums, { desc = "Toggle line numbers" })
vim.keymap.set("n", "<leader>rnu", toggle_rel_nums, { desc = "Toggle relative line numbers" })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Better movement
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

