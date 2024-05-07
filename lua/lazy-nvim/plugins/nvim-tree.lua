local function find_directory_and_focus()
	local actions = require("telescope.actions")
	local action_state = require("telescope.actions.state")

	local function open_nvim_tree(prompt_bufnr, _)
		actions.select_default:replace(function()
			local api = require("nvim-tree.api")

			actions.close(prompt_bufnr)
			local selection = action_state.get_selected_entry()
			api.tree.open()
			api.tree.find_file(selection.cwd .. "/" .. selection.value)
		end)
		return true
	end

	require("telescope.builtin").find_files({
		find_command = { "fd", "--type", "directory", "--hidden", "--exclude", ".git/*" },
		attach_mappings = open_nvim_tree,
	})
end

-- Keybindings
vim.keymap.set("n", "<leader>ee", "<Cmd>NvimTreeToggle<CR>", { desc = "Toggle [E]xplorer" })
vim.keymap.set("n", "<leader>ef", "<Cmd>NvimTreeFindFileToggle<CR>", { desc = "[E]xplore [F]ile" })
vim.keymap.set("n", "<leader>ec", "<Cmd>NvimTreeCollapse<CR>", { desc = "[E]xplore [C]ollapse" })
vim.keymap.set("n", "<leader>sd", find_directory_and_focus, { desc = "[S]earch [D]irectories" })

return {
	"nvim-tree/nvim-tree.lua",
	ersion = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			git = {
				enable = false,
			},
			view = {
				width = 60,
				number = true,
				relativenumber = true,
				float = {
					enable = false,
				},
			},
			renderer = {
				indent_markers = {
					enable = true,
				},
			},
		})
	end,
}
