local M = {
	opts =  {}
}

M.default_config = {
	level = 1,
}

local builtin = require("telescope.builtin")

M.setup = function(opts)
end

M.config = function(opts)
	M.opts = vim.tbl_deep_extend("force", default_config, opts)
end

M.find = function()
	local level = M.opts.level
	local current_buffer_directory = vim.fn.expand("%:h")

	builtin.find_files({
		prompt_title = "Adjacent",
		cwd = current_buffer_directory,
		find_command = { "find", ".", "-maxdepth", tostring(level), "-type", "f" },
	})
end

return M
