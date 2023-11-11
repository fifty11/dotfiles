vim.cmd("let g:NERDTreeHijackNetrw=0")
vim.cmd("let NERDTreeShowHidden=1")
vim.cmd("set mouse+=a")
function StartIDE()
	vim.cmd("nmap <Space>s :lua StopIDE()<CR>")
	vim.cmd("colorscheme habamax")

	require("thesixtendir")

	vim.cmd("let NERDTreeShowHidden=1")
	vim.wo.relativenumber = true
	vim.wo.number = true
	SetTabspace(4)
	if vim.loop.os_uname().sysname=="Linux" then
		Cmdick("pywal")
	else
		Cmdick("flexoki")
	end
	vim.cmd("set statusline+=%F")
end

function StopIDE()
	vim.cmd("nmap <Space>s :lua StartIDE()<CR>")
	vim.cmd("LspStop")
end

StartIDE()
