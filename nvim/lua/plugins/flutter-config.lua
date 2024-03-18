return {
	"akinsho/flutter-tools.nvim",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim", -- optional for vim.ui.select
	},
	ui = {
		border = "rounded",
	},
	decorations = {
		statusline = {
			app_version = true,
		},
	},
	config = true,
}
