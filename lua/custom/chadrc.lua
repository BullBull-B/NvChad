---@type ChadrcConfig 
 local M = {}
 M.ui = {theme = 'catppuccin'}
 M.plugins = 'custom.plugins'
 M.mappings = require("custom.mappings")

--Mapping by BullBull

-- to substitute
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])




 return M
