return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"brenoprata10/nvim-highlight-colors",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-vsnip",
		"hrsh7th/vim-vsnip",
	},
	config = function()
		local cmp = require("cmp")

		cmp.setup({
			formatting = {
				format = require("nvim-highlight-colors").format
			},
			snippet = {
				expand = function(args)
					vim.fn["vsnip#anonymous"](args.body)
				end,
			},
			mapping = {
				['<Down>'] = cmp.mapping.select_next_item(),
				['<Up>'] = cmp.mapping.select_prev_item(),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.close(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			},
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'vsnip' },
			}, {
				{ name = 'buffer' },
			})
		})
	end,
}
