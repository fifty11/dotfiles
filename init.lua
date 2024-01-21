vim.cmd("let g:NERDTreeHijackNetrw=0")
vim.cmd("let NERDTreeShowHidden=1")
vim.cmd("set mouse+=a")
vim.cmd("set splitright")
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

function StartIDE()
	vim.cmd("nmap <Space>s :lua StopIDE()<CR>")
	vim.cmd("set statusline=%F")
	vim.wo.relativenumber = true
	vim.wo.number = true


	require("thesixtendir")

	SetTabspace(4)
	Cmdick("gruvbox")
	--Randcol()
	--[[if vim.loop.os_uname().sysname=="Linux" then
		Cmdick("pywal")
	else
		Cmdick("flexoki")
	end]]--
end

function StopIDE()
	vim.cmd("nmap <Space>s :lua StartIDE()<CR>")
	vim.cmd("LspStop")
end

StartIDE()
