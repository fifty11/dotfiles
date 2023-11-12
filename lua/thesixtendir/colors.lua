local ColorSchemeRandomized
function Cmdick(colorschemeChoise)
	--without plugin you need following to 
	--[[if colorschemeChoise~=nil then
		vim.cmd("colorscheme " .. colorschemeChoise)
		vim.print(colorschemeChoise)
	end
	vim.cmd("highlight Normal guibg=none")
	vim.cmd("highlight NonText guibg=none")
	vim.cmd("highlight Normal ctermbg=none")
	vim.cmd("highlight NonText ctermbg=none")]]--
	--
	--wiht plugin
	vim.cmd("colorscheme " .. colorschemeChoise)
end
function Randcol ()
	math.randomseed(os.time())

	local i = math.random(3)
	ColorSchemeRandomized = "default"

	if(i == 1) then
		ColorSchemeRandomized = "kanagawa"
	elseif(i == 2) then
		ColorSchemeRandomized = "kanagawa-dragon"
	elseif(i == 3) then
		ColorSchemeRandomized = "kanagawa-dragon"
	end

	Cmdick(ColorSchemeRandomized)
end

function PC()
	vim.print(ColorSchemeRandomized)
end
