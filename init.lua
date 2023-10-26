function StartIDE()
	require("thesixtendir")
	vim.cmd("nmap <Space>s :lua StopIDE()<CR>")
	vim.cmd("LspStart")
	vim.wo.relativenumber = true
	vim.wo.number = true
	SetTabspace(4)
	Cmdick("flexoki")
	vim.cmd("set statusline+=%F")
end

function StopIDE()
	vim.cmd("nmap <Space>s :lua StartIDE()<CR>")
	vim.cmd("LspStop")
	vim.cmd("colorscheme koehler")
end
vim.cmd("nmap <Space>s :lua StartIDE()<CR>")
vim.cmd("colorscheme koehler")
