vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")

vim.cmd [[color twilight]]

vim.cmd [[set number]]
vim.cmd [[set termguicolors]]
vim.cmd [[set signcolumn=yes]]
vim.cmd [[highlight clear SignColumn]]

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<C-PageDown>', '<Cmd>BufferNext<CR>', opts)
map('n', '<C-PageUp>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<leader>kb', ':NvimTreeToggle<CR>', opts)
map('n', '<F12>', ':Navbuddy<CR>', opts)
