return {
	"rcarriga/nvim-notify",
	config = function()
		local notify = require("notify")
		vim.notify = function(message, level, opts)
			return notify(message, level, opts) -- <-- Important to return the value from `nvim-notify`
		end
	end,
}
