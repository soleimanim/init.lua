return {
	"neanias/everforest-nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	init = function()
		require("everforest").setup({
			background = "medium",
			colours_override = function(palette)
				palette.bg_dim = "#F3EDDA"
			end,
		})
		vim.cmd.colorscheme("everforest")
	end,

	config = function() end,
}
