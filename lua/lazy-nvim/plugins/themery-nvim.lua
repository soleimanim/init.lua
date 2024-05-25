return {
	"zaldih/themery.nvim",
	cmd = { "Themery" },
	config = function()
		require("themery").setup({
			themeConfigFile = "~/.config/nvim/lua/settings/theme.lua",
			themes = {
				{
					name = "Solarized Light",
					colorscheme = "NeoSolarized",
					before = [[
						require("NeoSolarized").setup({
							transparent = false,
							style = "light",
							undercurl = false,
							on_highlights = function(highlights, colors)
								colors.green = "#3EA59C"
								highlights.BufferCurrent.bg = colors.base1
								highlights.BufferCurrent.fg = colors.bg1
								highlights.BufferCurrentMod.fg = colors.bg1
								highlights.PmenuSel.fg = colors.bg1
								highlights.String.fg = colors.green
							end,
						})
						vim.opt.background = "light"
				]],
				},
				{
					name = "Solarized Dark",
					colorscheme = "NeoSolarized",
					before = [[
						require("NeoSolarized").setup({
							transparent = false,
							style = "dark",
						})
						vim.opt.background = "dark"
				]],
				},
			},
		})
	end,
}
