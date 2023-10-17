function far()
	local find = vim.fn.input("find: ")
	if find==nil then
		return -1
	end
	local replace = vim.fn.input("replace: ")
	if replace==nil then
		replace=""
	end

	vim.cmd("%s/" .. find .. "/" .. replace .. "/g")
	return 0
end
