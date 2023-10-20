function Cmdick(colorschemeChoise)
	if colorschemeChoise~=nil then
		vim.cmd("colorscheme " .. colorschemeChoise)
		vim.print(colorschemeChoise)
	end
	vim.cmd("highlight Normal guibg=none")
	vim.cmd("highlight NonText guibg=none")
	vim.cmd("highlight Normal ctermbg=none")
	vim.cmd("highlight NonText ctermbg=none")

end
function Randcol ()
	math.randomseed(os.time())

	local i = math.random(5)
	local colorSchemeRandomized="default"

	if i == 1 then
		colorSchemeRandomized="gruvbox"
	elseif i == 2 then
		colorSchemeRandomized="darkplus"
	elseif i==3 then
		colorSchemeRandomized="habamax"
	elseif i==4 then
		colorSchemeRandomized="flexkbi"
	elseif i==5 then
		i=math.random(4)
		if i==1 then
			colorSchemeRandomized="tokyonight-storm"
		elseif i==2 then
			colorSchemeRandomized="tokyonight-moon"
		elseif i==3 then
			colorSchemeRandomized="tokyonight-night"
		elseif i==4 then
			colorSchemeRandomized="tokyonight-night"
		end
	end
	Cmdick(colorSchemeRandomized)
end
