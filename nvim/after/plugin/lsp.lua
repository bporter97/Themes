local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.ensure_installed({
	'omnisharp',
	'clangd',
	'tsserver',
	'zls',
	'jsonls',
	'lua_ls',
	'lemminx',
	'html'
})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

