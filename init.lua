function StartIDE()
	vim.cmd("nmap <Space>s :lua StopIDE()<CR>")
	vim.cmd("colorscheme habamax")

	require("thesixtendir")

	vim.cmd("let NERDTreeShowHidden=1")
	vim.wo.relativenumber = true
	vim.wo.number = true
	SetTabspace(4)
	Cmdick("pywal")
	vim.cmd("set statusline+=%F")
end

function StopIDE()
	vim.cmd("nmap <Space>s :lua StartIDE()<CR>")
	vim.cmd("LspStop")
end

StartIDE()
