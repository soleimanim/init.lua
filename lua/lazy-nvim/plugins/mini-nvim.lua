return { -- Collection of various small independent plugins/modules
	"echasnovski/mini.nvim",
	config = function()
		-- Better Around/Inside textobjects
		--
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [']quote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		-- Add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [k]
		require("mini.surround").setup()

		require("mini.sessions").setup({})
		-- Load session commands to write and read
		local getSessionName = function(args)
			local name = args
			if name == "" then
				name = "default"
			end
			return name
		end

		local loadSession = function(params)
			MiniSessions.read(getSessionName(params.args), {})
		end
		local writeSession = function(params)
			MiniSessions.write(getSessionName(params.args), {})
		end

		vim.api.nvim_create_user_command("SessionLoad", loadSession, { nargs = "?" })
		vim.api.nvim_create_user_command("SessionWrite", writeSession, { nargs = "?" })
	end,
}
