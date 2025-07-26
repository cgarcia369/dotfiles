return {
	"nvim-neotest/neotest",
	dependencies = {
		"marilari88/neotest-vitest",
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		local neotest = require("neotest")
		neotest.setup({
			adapters = {
				require("neotest-vitest"),
			},
		})
		-- Show test summary
		vim.keymap.set("n", "<leader>t", ":Neotest summary<CR>", { desc = "Show test summary" })

		-- Run nearest test
		vim.keymap.set("n", "<leader>nt", function()
			neotest.run.run()
		end, { desc = "Run nearest test" })
	end,
}
