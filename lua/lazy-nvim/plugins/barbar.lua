-- this plugin is used for ui of buffer tabs

local barbar = {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {
		sidebar_filetypes = {
			NvimTree = true,
		},
	},
	version = "^1.0.0", -- optional: only update when a new 1.x version is released
}

vim.keymap.set("n", "<Tab>", "<Cmd>BufferNext<CR>", { desc = "[T]ab [N]ext" })
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", { desc = "[T]ab [P]revious" })
vim.keymap.set("n", "<leader>tmn", "<Cmd>BufferMoveNext<CR>", { desc = "[T]ab [M]ove [N]ext" })
vim.keymap.set("n", "<leader>tmp", "<Cmd>BufferMovePrevious<CR>", { desc = "[T]ab [M]ove [P]revious" })
vim.keymap.set("n", "<leader>tp", "<Cmd>BufferPin<CR>", { desc = "[T]ab [P]in" })
vim.keymap.set("n", "<leader>tc", "<Cmd>BufferClose<CR>", { desc = "[T]ab [C]lose" })
vim.keymap.set("n", "<leader>to", "<Cmd>BufferCloseAllButCurrentOrPinned<CR>", { desc = "[T]ab Close [O]ther" })

return barbar
