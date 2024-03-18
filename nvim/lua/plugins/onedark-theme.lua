return {
	"navarasu/onedark.nvim",
	config = function()
		require("onedark").setup({
			style = "deep",
			code_style = {
				keywords = "bold",
			},
			colors = {
				black = "#131517",
				bg0 = "#131517",
				bg1 = "#1f2123",
				bg2 = "#1f2123",
				bg3 = "#1f2123",
				bg_d = "#131517",
				purple = "#ff78b2",
				green = "#ff806c",
				red = "#ffffff",
			},
		})
		require("onedark").load()
	end,
}
