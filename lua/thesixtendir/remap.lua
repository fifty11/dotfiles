local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

keymap("i", "<F12>", "<ESC><leader>gdwhi", default_opts) --find defention and set cursor to after it


keymap("i", "<C-s>", "<ESC>:w<CR>a", default_opts) --save - insertmode
keymap("n", "<C-s>", "<ESC>:w<CR>", default_opts) --save - normalmode
keymap("i", "<C-Q>", "<ESC>:q<CR>a", default_opts) --quit - insertmode
keymap("n", "<C-Q>", "<ESC>:q<CR>", default_opts) --quit - normalmode

keymap("n", "<leader>mk", ":lua Make()<CR>", default_opts) --make

keymap("n", "<leader>cd", ":lua vim.cmd.cd(\"%:p:h\")<CR>", default_opts) --change directory


keymap("n", "<C-h>", ":lua far()<CR>", default_opts) --find and replace
keymap("n", "<C-f>", "?", default_opts) --find


keymap("n", "<leader>ga", ":lua GitAdd()<CR>", default_opts)--find and replace
keymap("n", "<leader>gc", ":lua GitCommit()<CR>", default_opts)--find and replace
keymap("n", "<leader>gp", ":lua GitPush()<CR>", default_opts)--find and replace
keymap("n", "<leader>bk", ":!make clean; bear -- make", default_opts)--find and replace


--%s/n/e/g
--vim.cmd.cd("%:p:h")
--vim.cmd("nm <leader>mk !make")
--vim.cmd("nm <leader>mc !make clean")
