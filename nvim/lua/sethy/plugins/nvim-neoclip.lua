return {
	"AckslD/nvim-neoclip.lua",
	dependencies = {
		-- you'll need at least one of these
		-- {'nvim-telescope/telescope.nvim'},
		-- {'ibhagwan/fzf-lua'},
	},
	config = function()
		require("neoclip").setup({
			keys = {
				telescope = {
					i = {
						select = "<cr>",
						paste = "<c-p>",
						paste_behind = "<nop>",
						replay = "<nop>", -- replay a macro
						delete = "<nop>", -- delete an entry
						edit = "<nop", -- edit an entry
						custom = {},
					},
					n = {
						select = "<cr>",
						paste = "p",
						paste_behind = "P",
						replay = "<nop>",
						delete = "<nop>",
						edit = "<nop>",
						custom = {},
					},
				},
				fzf = {
					select = "default",
					paste = "ctrl-p",
					paste_behind = "ctrl-b",
					custom = {},
				},
			},
		})
		vim.keymap.set("n", "<C-v>", "<cmd>Telescope neoclip<CR>", { desc = "Open Neoclip" })
	end,
}
