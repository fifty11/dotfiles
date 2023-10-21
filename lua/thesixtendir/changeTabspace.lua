function SetTabspace(tabspace)
	vim.cmd("set autoindent noexpandtab tabstop=" .. tabspace .. " shiftwidth=" .. tabspace)
end
