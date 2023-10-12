function cmdick(colorschemeChoise)
	if colorschemeChoise==nil then
		return 0
	end
	vim.cmd("colorscheme " .. colorschemeChoise)
	vim.cmd("highlight Normal guibg=none")
	vim.cmd("highlight NonText guibg=none")
	vim.cmd("highlight Normal ctermbg=none")
	vim.cmd("highlight NonText ctermbg=none")

end
math.randomseed(os.time())

local i = math.random(2)
local colorSchemeRandomized="default"

if i == 1 then
	colorSchemeRandomized="gruvbox"
elseif i == 2 then
	colorSchemeRandomized="darkplus"
end
cmdick(colorSchemeRandomized)


