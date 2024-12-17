return {
	{
		"nvim-treesitter/nvim-treesitter", 
		build = ":TSUpdate",
		config = function () 
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = { 
					"c", 
					"css",
					"elixir", 
					"go",
					"hcl",
					"heex", 
					"html",
					"javascript", 
					"lua", 
					"php",
					"python",
					"rust",
					"query", 
					"terraform",
					"tsx",
					"typescript",
					"vim", 
					"vimdoc", 
				},
				sync_install = false,
				highlight = { enable = true },
			})
		end
	}
}
