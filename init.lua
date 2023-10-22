vim.cmd("colorscheme koehler")
vim.cmd("nmap <Space>s :lua StartIDE()<CR>")
function StartIDE()
	vim.cmd("nunmap <Space>s")
	require("lsp-zero").setup()
	require("thesixtendir")
	vim.wo.relativenumber = true
	vim.wo.number = true
	SetTabspace(4)
	Cmdick("flexoki")
	vim.cmd("set statusline+=%F")
end
