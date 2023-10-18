local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

vim.g.mapleader = " "

keymap("n", "<leader>a", ":lua vim.lsp.buf.code_action()<CR>", default_opts)


vim.keymap.set("n", "<leader>e", vim.cmd.Ex)


vim.cmd("imap <C-s> <ESC>:w<CR>a")


keymap("n", "<leader>mk", ":lua make()", default_opts)

keymap("n", "<leader>cd", ":lua vim.cmd.cd(\"%:p:h\")<CR>", default_opts)


keymap("n", "<C-h>", ":lua far()<CR>", default_opts)--find and replace


keymap("n", "<leader>ga", ":lua GitAdd()<CR>", default_opts)--find and replace
keymap("n", "<leader>gc", ":lua GitCommit()<CR>", default_opts)--find and replace
keymap("n", "<leader>gp", ":lua GitPush()<CR>", default_opts)--find and replace

--%s/n/e/g
--vim.cmd.cd("%:p:h")
--vim.cmd("nm <leader>mk !make")
--vim.cmd("nm <leader>mc !make clean")
