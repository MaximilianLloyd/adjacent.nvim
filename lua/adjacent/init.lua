local M = {}

local builtin = require "telescope.builtin"


M.find = function()
	-- Get directory of current buffer
    local current_buffer_directory = vim.fn.expand("%:h")

	builtin.find_files({
		prompt_title = "Adjacent",
		cwd = current_buffer_directory,
	})
end


return M
