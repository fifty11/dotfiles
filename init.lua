vim.cmd("colorscheme koehler")
vim.cmd("nmap <Space>s :lua StartIDE()<CR>")


function StartIDE()
	vim.cmd("nmap <Space>s :lua StopIDE()<CR>")
	require("thesixtendir")
	vim.cmd("LspStart")
	vim.wo.relativenumber = true
	vim.wo.number = true
	SetTabspace(4)
	Cmdick("flexoki")
	vim.cmd("set statusline+=%F")
end

function StopIDE()
	vim.cmd(":LspStop")
	vim.cmd("colorscheme koehler")
	vim.cmd("nmap <Space>s :lua StartIDE()<CR>")
end
