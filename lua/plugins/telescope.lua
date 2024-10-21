return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 
		'nvim-lua/plenary.nvim',
		'nvim-telescope/telescope-fzf-native.nvim',
	},
	config = function ()
		local builtin = require('telescope.builtin')

		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

		local config = require('telescope')

		config.setup({
			pickers = {
				colorscheme = {
					enable_preview = true
				}
			}
		})
	end
}
