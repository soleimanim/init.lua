return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({})

		local Terminal = require("toggleterm.terminal").Terminal
		local defaultTerm = Terminal:new({})
		local getTemrminalSize = function(direction)
			local size = vim.o.columns / 2
			if direction == "horizontal" then
				size = vim.o.winheight / 3
				if size < 10 then
					size = 10
				end
			end

			return size
		end
		local toggleDefaultTerminal = function(direction)
			defaultTerm:toggle(getTemrminalSize(direction), direction)
		end
		local openDefaultTerminal = function(direction)
			local newTerm = Terminal:new({})
			Terminal.open(newTerm, getTemrminalSize(direction), direction)
		end

		vim.keymap.set("n", "<leader>zv", function()
			toggleDefaultTerminal("vertical")
		end, { desc = "Toggle Terminal [V]ertical" })
		vim.keymap.set("n", "<leader>zh", function()
			toggleDefaultTerminal("horizontal")
		end, { desc = "Toggle Terminal [H]orizontal" })
		vim.keymap.set("n", "<leader>zf", function()
			toggleDefaultTerminal("float")
		end, { desc = "Toggle Terminal [F]loating" })
		vim.keymap.set("n", "<leader>znv", function()
			openDefaultTerminal("vertical")
		end, { desc = "Open Newe [V]ertical Terminal" })
		vim.keymap.set("n", "<leader>znh", function()
			openDefaultTerminal("horizontal")
		end, { desc = "Open Newe [H]orizontal Terminal" })
		vim.keymap.set("n", "<leader>zt", "<Cmd>ToggleTermToggleAll<Cr>", { desc = "[T]oggle All Terminals" })
		vim.keymap.set("t", "jj", [[<C-\><C-n>]], { desc = "To Normal Mode" })
	end,
}
