return {
	'neovim/nvim-lspconfig',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'SmiteshP/nvim-navbuddy',
	},
	config = function()
		local nvim_lsp = require('lspconfig')
		local attach_nvim = function(client, bufnr)
			require('nvim-navbuddy').attach(client, bufnr)
		end

		nvim_lsp.cssls.setup{
			on_attach = attach_nvim
		}
		nvim_lsp.cssmodules_ls.setup{
		}
		nvim_lsp.gopls.setup{
			on_attach = attach_nvim
		}
		nvim_lsp.ts_ls.setup{
			on_attach = attach_nvim
		}
	end
}
