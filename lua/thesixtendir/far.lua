function far()
	local find = vim.fn.input("find: ")
	local replace = vim.fn.input("replace: ")
	vim.cmd("%s/" .. find .. "/" .. replace .. "/g")
end
