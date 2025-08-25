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
								vim.api.nvim_set_hl(0, "IblIndent", { fg = colors.bg1 })
								vim.api.nvim_set_hl(0, "IblScope", { fg = colors.bg0 })
							end,
						})
						require("lualine").setup({
							options = {
								theme = "NeoSolarized",
							},
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

						require("lualine").setup({
							options = {
								theme = "NeoSolarized",
							},
						})

						vim.opt.background = "dark"
				]],
				},
				{
					name = "Catppuccin Latte",
					colorscheme = "catppuccin-latte",
					before = [[
						require('lualine').setup {
							options = {
								theme = "catppuccin"
								-- ... the rest of your lualine config
							}
						}
					]],
				},
				{
					name = "Catppuccin Frappe",
					colorscheme = "catppuccin-frappe",
					before = [[
						require('lualine').setup {
							options = {
								theme = "catppuccin"
								-- ... the rest of your lualine config
							}
						}
					]],
				},
				{
					name = "Catppuccin Macchiato",
					colorscheme = "catppuccin-macchiato",
					before = [[
						require('lualine').setup {
							options = {
								theme = "catppuccin"
								-- ... the rest of your lualine config
							}
						}
					]],
				},
				{
					name = "Catppuccin Mocha",
					colorscheme = "catppuccin-mocha",
					before = [[
						require('lualine').setup {
							options = {
								theme = "catppuccin"
								-- ... the rest of your lualine config
							}
						}
					]],
				},
			},
		})
	end,
}
