return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"wojciech-kulik/xcodebuild.nvim",
	},
	config = function()
		local xcodebuild = require("xcodebuild.integrations.dap")

		-- NOTE: replace the path below with the path of codelldb on your computer
		local codelldbPath = os.getenv("HOME") .. "/codelldb/codelldb-x86_64-darwin.vsix"

		xcodebuild.setup(codelldbPath)

		vim.keymap.set("n", "<leader>dxd", xcodebuild.build_and_debug, { desc = "Build & Debug" })
		vim.keymap.set("n", "<leader>dxr", xcodebuild.debug_without_build, { desc = "Debug Without Building" })
		vim.keymap.set("n", "<leader>dxt", xcodebuild.debug_tests, { desc = "Debug Tests" })
		vim.keymap.set("n", "<leader>dxT", xcodebuild.debug_class_tests, { desc = "Debug Class Tests" })
		vim.keymap.set("n", "<leader>dxb", xcodebuild.toggle_breakpoint, { desc = "Toggle Breakpoint" })
		vim.keymap.set("n", "<leader>dxB", xcodebuild.toggle_message_breakpoint, { desc = "Toggle Message Breakpoint" })
		vim.keymap.set("n", "<leader>dxx", xcodebuild.terminate_session, { desc = "Terminate Debugger" })
	end,
}
