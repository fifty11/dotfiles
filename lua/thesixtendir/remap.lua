local keymap = vim.keymap.set
 
local default_opts = { norekeymap = true, silent = true }
local function map(str1, str2)
	keymap("n", str1, "<cmd>" .. str2)
	keymap("i", str1, "<cmd>" .. str2)
end
vim.g.keymapleader = " "


--keymap("n", "<leader>e", "<CMD>Ex")

keymap("n", "<leader>he", "<CMD>lua require(\"harpoon.ui\").toggle_quick_menu()") --harpoon menu
keymap("n", "<leader>ha", "<CMD>lua require(\"harpoon.mark\").add_file()") --harpoon menu


keymap("i", "<F12>", "<ESC><leader>gdwhi") --find defention and set cursor to after it


map("<C-s>", "<ESC>:w<CR>a")
map("<C-q>", "wqa")
map("<C-Q>", "qa!")


keymap("n", "<leader>bk", ":!make clean; bear -- make")--make a compile_flags.json through the Makefile
keymap("n", "<leader>mk", ":!make all") --make


keymap("n", "<leader>cd", "<CMD>lua vim.cmd.cd(\"%:p:h\")") --change directory to current working file


keymap("n", "<C-h>", "<CMD>lua Far()") --find and replace
keymap("n", "<C-f>", "?") --find


keymap("n", "<leader>ga", ":!git add *")--git add <options>(default:"*")
keymap("n", "<leader>gc", ":!git commit -am \"latest push\"")--git commit -am <options>(default:"gang gang, gang gang, icecream so good, i am a cowboy")
keymap("n", "<leader>gp", ":!git push -u origin ")--git push <options>(default:"")



map("<A-t>", ":NERDTreeToggle<CR>:vertical resize 23<CR>")

-- Move to previous/next
map('<A-,>', '<Cmd>BufferPrevious<CR>')
map('<A-.>', '<Cmd>BufferNext<CR>')
-- Re-order to previous/next
map('<A-<>', '<Cmd>BufferMovePrevious<CR>')
map('<A->>', '<Cmd>BufferMoveNext<CR>')
-- Goto buffer in position...
map('<A-1>', '<Cmd>BufferGoto 1<CR>')
map('<A-2>', '<Cmd>BufferGoto 2<CR>')
map('<A-3>', '<Cmd>BufferGoto 3<CR>')
map('<A-4>', '<Cmd>BufferGoto 4<CR>')
map('<A-5>', '<Cmd>BufferGoto 5<CR>')
map('<A-6>', '<Cmd>BufferGoto 6<CR>')
map('<A-7>', '<Cmd>BufferGoto 7<CR>')
map('<A-8>', '<Cmd>BufferGoto 8<CR>')
map('<A-9>', '<Cmd>BufferGoto 9<CR>')
map('<A-0>', '<Cmd>BufferLast<CR>')
-- Pin/unpin buffer
map('<A-p>', '<Cmd>BufferPin<CR>')
-- Close buffer
map('<A-c>', '<Cmd>BufferClose<CR>')






--%s/n/e/g
--vim.cmd.cd("%:p:h")

