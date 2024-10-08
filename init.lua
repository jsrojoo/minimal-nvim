local lspconfig = require('lspconfig')

local options = { silent = true, remap = true, }

-- allows case insensitive <TAB> completion to 
vim.opt.ignorecase = true

vim.keymap.set('n', '<space>', '<nop>', { silent = true, remap = false })
vim.keymap.set('n', '<space>', '<leader>', options)

vim.keymap.set('n', '<leader>q', ':q!<cr>', options)
vim.keymap.set('n', '<leader>w', ':w<cr>', options)

vim.keymap.set('n', '<leader>ei', ':e $MYVIMRC<cr>', options)

vim.keymap.set('n', '<leader>fe', vim.lsp.buf.format, options)
vim.keymap.set('n', '<leader>fo', ':Explore<CR>', options)
vim.keymap.set('n', '<leader><space>', '<C-^>', options)

local lsp_servers = {
	"pyright",
	"ruff_lsp",
}

vim.cmd([[
colorscheme catppuccin-latte
]])

for _, lsp in ipairs(lsp_servers) do
	lspconfig[lsp].setup({})
end

-- require'lspconfig'.pyright.setup{}
-- require'lspconfig'.ruff_lsp.setup{}
