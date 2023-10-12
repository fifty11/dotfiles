local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

vim.g.mapleader = " "

keymap("n", "<leader>a", ":lua vim.lsp.buf.code_action()<CR>", default_opts)
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
keymap("n", "<leader>mk", ":!make all<CR>", default_opts)
keymap("n", "<leader>mc", ":!make clean<CR>", default_opts)
keymap("n", "<leader>mt", ":!make test<CR>", default_opts)

--vim.cmd("nm <leader>mk !make")
--vim.cmd("nm <leader>mc !make clean")
