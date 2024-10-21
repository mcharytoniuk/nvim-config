return {
	"SmiteshP/nvim-navbuddy",
	dependencies = {
		"SmiteshP/nvim-navic",
		"MunifTanjim/nui.nvim",
	},
	-- keys = require("mappings").navbuddy,
	config = function()
		local actions = require("nvim-navbuddy.actions")
		require("nvim-navbuddy").setup({
			window = {
				size = "80%",
			},
			mappings = {
				["<down>"] = actions.next_sibling(),
				["<up>"] = actions.previous_sibling(),
				["<left>"] = actions.parent(),
				["<right>"] = actions.children(),
				-- ["<c-c>"] = actions.close(),
			},
			source_buffer = {
				follow_node = true,
				highlight = true,
				reorient = "smart", -- "smart", "top", "mid" or "none"
			},
			lsp = {
				auto_attach = false,
			},
		})
		vim.api.nvim_set_hl(0, "NavbuddyNormalFloat", { link = "TelescopeNormal" })
	end,
}

