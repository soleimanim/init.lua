-- Themery block
-- This block will be replaced by Themery.
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


vim.cmd("colorscheme NeoSolarized")
vim.g.theme_id = 1
-- end themery block
