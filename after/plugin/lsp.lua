local lsp = require("lsp-zero")

lsp.preset("recommended")

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'sh',
  callback = function()
    vim.lsp.start({
      name = 'bash-language-server',
      cmd = { 'bash-language-server', 'start' },
    })
  end,
})

lsp.ensure_installed({
	'lua_ls',
	'pyre',
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
	['<CR>'] = cmp.mapping.confirm({ select = true }),
	["<C-Space>"] = cmp.mapping.complete(),

})

cmp.setup({
  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.set_preferences({
		suggest_lsp_servers = true,
		sign_icons = {
				error = 'E',
				warn = 'W',
				hint = 'H',
				info = 'i'
		}
})

require('mason.settings').set({
	ui = {
		border = 'rounded'
	}
})

lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = true}
vim.lsp.buf.code_action()
	vim.keymap.set("n", "<leader>a", function () vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

vim.diagnostic.config({
		virtual_text = true
})

lsp.setup()

require 'lspconfig'.clangd.setup{}
