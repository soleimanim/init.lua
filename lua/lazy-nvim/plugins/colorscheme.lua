return {
	"Tsuzat/NeoSolarized.nvim",
	lazy = false,
	priority = 1000, -- Make sure to load this before all the other start plugins.
	config = function()
		require("NeoSolarized").setup({
			transparent = false,
			style = "light",
			undercurl = false,
			on_highlights = function(highlights, colors)
				highlights.BufferCurrent.bg = colors.base1
				highlights.BufferCurrent.fg = colors.bg1
				highlights.BufferCurrentMod.fg = colors.bg1
				highlights.PmenuSel.fg = colors.bg1
			end,
		})
		vim.cmd([[colorscheme NeoSolarized]])
	end,
}
