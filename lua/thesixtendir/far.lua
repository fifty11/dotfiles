--made by fifty11 (@github)
--i dont have a licence so it is ownerless :( but free to use for all use :)
function far()
	local find = vim.fn.input("find: ")
	if find==nil then
		return -1
	end
			find = find:gsub("%/", "\\/")
	local replace = vim.fn.input("replace: ")
	if replace==nil then
		replace=""
	end

	vim.cmd("%s/" .. find .. "/" .. replace .. "/g")
	return 0
end
