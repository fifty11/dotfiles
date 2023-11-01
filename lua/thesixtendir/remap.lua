local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

vim.g.mapleader = " "


keymap("n", "<leader>e", ":Ex<CR>", default_opts)

keymap("n", "<leader>he", ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>", default_opts) --harpoon menu
keymap("n", "<leader>ha", ":lua require(\"harpoon.mark\").add_file()<CR>", default_opts) --harpoon menu


keymap("n", "<C-t>", ":NERDTreeToggle<CR>:vertical resize 23<CR>", default_opts) --toggle NERDTree --normalmode
keymap("i", "<C-t>", "<ESC>:NERDTreeToggle<CR>:vertical resize 23<CR>", default_opts) --toggle NERDTree --normalmode


keymap("i", "<F12>", "<ESC><leader>gdwhi", default_opts) --find defention and set cursor to after it


keymap("i", "<C-s>", "<ESC>:w<CR>a", default_opts) --save - insertmode
keymap("n", "<C-s>", "<ESC>:w<CR>", default_opts) --save - normalmode
keymap("i", "<C-Q>", "<ESC>:q<CR>a", default_opts) --quit - insertmode
keymap("n", "<C-Q>", "<ESC>:q<CR>", default_opts) --quit - normalmode


keymap("n", "<leader>bk", ":!make clean; bear -- make", default_opts)--make a compile_flags.json through the Makefile
keymap("n", "<leader>mk", ":!make all", default_opts) --make


keymap("n", "<leader>cd", ":lua vim.cmd.cd(\"%:p:h\")<CR>", default_opts) --change directory to current working file


keymap("n", "<C-h>", ":lua Far()<CR>", default_opts) --find and replace
keymap("n", "<C-f>", "?", default_opts) --find


keymap("n", "<leader>ga", ":!git add *", default_opts)--git add <options>(default:"*")
keymap("n", "<leader>gc", ":!git commit -am \"gang gang, gang gang, icecream so good, i am a cowboy\"", default_opts)--git commit -am <options>(default:"gang gang, gang gang, icecream so good, i am a cowboy")
keymap("n", "<leader>gp", ":!git push -u origin ", default_opts)--git push <options>(default:"")


--%s/n/e/g
--vim.cmd.cd("%:p:h")
