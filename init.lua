vim.cmd("nmap <Space>st :lua StartIDE()<CR>")
function StartIDE()
	vim.cmd("nunmap <Space>st")
	require("thesixtendir")
	vim.wo.relativenumber = true
	vim.wo.number = true
	SetTabspace(4)
	Cmdick("flexoki")
	vim.cmd("set statusline+=%F")
end
