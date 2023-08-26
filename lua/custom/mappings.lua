local M = {}

M.general = {
  n = {
    ["<C-h>"] = {"<cmd> TmuxNavigateLeft<CR>", "window left"},
    ["<C-l>"] = {"<cmd> TmuxNavigateRight<CR>", "window right"},
    ["<C-j>"] = {"<cmd> TmuxNavigateDown<CR>", "window down"},
    ["<C-k>"] = {"<cmd> TmuxNavigateUp<CR>", "window up"},
  }
}

-- Mappings Added by BullBull

-- To wrap line below remaining where you are
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- To Move visually selected lines up or down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")

-- it center your cursor as you move up or down using ctrl u and ctrl d
  -- vim.keymap.set("n", "<C-d>", "<C-d>zz")
  -- vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- to center your search terms
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- to esc with ctrl c which also works in visual block mode 
vim.keymap.set("i", "<C-c>", "<Esc>:noh<CR>")



return M


