return {
	"zbirenbaum/copilot.lua",
	enabled = true,
	config = function()
		local copilot = require("copilot")
		copilot.setup({
			suggestion = { enabled = false },
			panel = { enabled = false },
		})
	end,
}
