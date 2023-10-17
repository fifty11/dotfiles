local e

local input
function GitAdd()
	e = vim.fn.input("add files(default: \".\"): ")

	if e=="" then
		e="*"
	end
	vim.cmd("!git add " .. e)
end
function GitCommit()
	e = vim.fn.input("commit option(default: \".\"): ")

	if e=="" then
		e="commit"
	end
	vim.cmd("!git commit -am \"" .. e .. "\"")
end
function GitPush()
	e = vim.fn.input("push(default: \"origin main\"): ")
	vim.cmd("!git push " .. e)
end
