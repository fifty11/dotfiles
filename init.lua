function StartIDE()
	vim.cmd("nmap <Space>s :lua StopIDE()<CR>")
	vim.cmd("colorscheme koehler")

	require("thesixtendir")

	vim.wo.relativenumber = true
	vim.wo.number = true
	SetTabspace(4)
	Cmdick("flexoki")
	vim.cmd("set statusline+=%F")
end

function StopIDE()
	vim.cmd("nmap <Space>s :lua StartIDE()<CR>")
	vim.cmd("LspStop")
end

StartIDE()
