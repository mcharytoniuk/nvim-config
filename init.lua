vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")

vim.cmd [[color twilight]]

-- vim.cmd [[set number]]
vim.cmd [[set termguicolors]]
vim.cmd [[set signcolumn=yes]]
vim.cmd [[highlight clear SignColumn]]

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- barbar
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<C-PageDown>', '<Cmd>BufferNext<CR>', opts)
map('n', '<C-PageUp>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
map('n', '<leader>bp', '<Cmd>BufferPick<CR>', opts)
map('n', '<leader>bw', '<Cmd>BufferClose<CR>', opts)

-- nvim-tree
map('n', '<leader>kb', '<Cmd>NvimTreeToggle<CR>', opts)
map('n', '<F12>', '<Cmd>Navbuddy<CR>', opts)
