local input
function GitAdd()
	input = vim.fn.input("git add: ")

	if input == "" then
		input = "*"
	end
	vim.cmd("!git add " .. input)
end
function GitCommit()
	input = vim.fn.input("git commit -am: ")

	if input == "" then
		input = "commit"
	end
	vim.cmd("!git commit -am \"" .. input .. "\"")
end
function GitPush()
	input = vim.fn.input ("git push: ")
	vim.cmd("!git push " .. input)
end
