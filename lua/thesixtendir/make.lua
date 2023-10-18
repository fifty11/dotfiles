local input
function Make()
	input = vim.fn.input("make: ")
	vim.cmd("!make " .. input)
end
