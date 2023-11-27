local keymap = vim.api.nvim_set_keymap
local def_opts = { noremap = true, silent = true }
local function map(str1, str2)
	keymap("n", str1, "<cmd>" .. str2 .. "<CR>", def_opts)
	keymap("i", str1, "<cmd>" .. str2 .. "<CR>", def_opts)
end

--keymap("n", "j", "h", def_opts)
--keymap("n", "k", "j", def_opts)
--keymap("n", "l", "k", def_opts)
--keymap("n", ";", "l", def_opts)

vim.g.mapleader = " "

keymap("n", "<leader>e", ":Ex<CR>", def_opts)

keymap("n", "<leader>he", ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>", def_opts) --harpoon menu
keymap("n", "<leader>ha", ":lua require(\"harpoon.mark\").add_file()<CR>", def_opts) --harpoon menu


keymap("v", "<c-c>", "\"+y", def_opts)
keymap("i", "<F12>", "<ESC><leader>gdwhi", def_opts) --find defention and set cursor to after it
keymap("n", "<C-l>", "w", def_opts)
keymap("n", "<C-h>", "b", def_opts)



map("<C-s>", "w")
map("<A-s>", "wa")
map("<C-q>", "qa")
map("<A-Q>", "qa!")


keymap("n", "<leader>cd", ":lua vim.cmd.cd(\"%:p:h\")<CR>", def_opts) --change directory to current working file


keymap("n", "<leader>hh", ":lua Far()<CR>", def_opts) --find and replace
map("<C-f>", "noh") --find


keymap("n", "<leader>ga", ":!git add *", def_opts)--git add <options>(default:"*")
keymap("n", "<leader>gc", ":!git commit -am \"latest push\"", def_opts)--git commit -am <options>(default:"latest commit")
keymap("n", "<leader>gp", ":!git push -u origin ", def_opts)--git push <options>(default:"")


keymap("n", "<leader>bk", ":!make clean; bear -- make", def_opts)--make a compile_flags.json through the Makefile
keymap("n", "<leader>mk", ":!make all", def_opts) --make


map("<A-t>", ":NERDTreeToggle<CR>:vertical resize 23<CR>")

-- Move to previous/next
map('<A-,>', 'BufferPrevious<CR>')
map('<A-.>', 'BufferNext<CR>')
-- Re-order to previous/next
map('<A-<>', 'BufferMovePrevious')
map('<A->>', 'BufferMoveNext')
-- Goto buffer in position...
map('<A-1>', 'BufferGoto 1')
map('<A-2>', 'BufferGoto 2')
map('<A-3>', 'BufferGoto 3')
map('<A-4>', 'BufferGoto 4')
map('<A-5>', 'BufferGoto 5')
map('<A-6>', 'BufferGoto 6')
map('<A-7>', 'BufferGoto 7')
map('<A-8>', 'BufferGoto 8')
map('<A-9>', 'BufferGoto 9')
map('<A-0>', 'BufferLast')
-- Pin/unpin buffer
map('<A-p>', 'BufferPin')
-- Close buffer
map('<A-c>', 'BufferClose')


--%s/n/e/g
--vim.cmd.cd("%:p:h")

