vim.g.mapleader = " "

local options = { silent = true, remap = true, }

local HOME_PATH = vim.fn.expand("$HOME")
local VIMRC_FILE_PATH = vim.fn.expand("$MYVIMRC")
local VIMRC_DIR_PATH = vim.fn.fnamemodify(VIMRC_FILE_PATH, ":h")
local LUA_KEYMAPS = VIMRC_DIR_PATH .. '/lua/keymaps.lua'
local LUA_OPTIONS = VIMRC_DIR_PATH .. '/lua/options.lua'
local LUA_PLUGINS = VIMRC_DIR_PATH .. '/lua/plugins'

vim.keymap.set('n', '<space>', '<nop>', { silent = true, remap = false })

vim.keymap.set('n', '<leader>q', ':q!<cr>', options)
vim.keymap.set('n', '<leader>w', ':w<cr>', options)

vim.keymap.set('n', '<leader>ei', ':e $MYVIMRC<cr>', options)
vim.keymap.set('n', '<leader>ek', ':e ' .. LUA_KEYMAPS .. '<cr>', options)
vim.keymap.set('n', '<leader>eo', ':e ' .. LUA_OPTIONS .. '<cr>', options)
vim.keymap.set('n', '<leader>ep', ':e ' .. LUA_PLUGINS .. '<cr>', options)

vim.keymap.set('n', '<leader>fe', vim.lsp.buf.format, options)
vim.keymap.set('n', '<leader>fo', ':Explore<CR>', options)
vim.keymap.set('n', '<leader><space>', '<C-^>', options)

vim.keymap.set('n', '<leader>fa', ':FzfLua files<cr>', options)
vim.keymap.set('n', '<leader>fg', ':FzfLua git_files<cr>', options)
vim.keymap.set('n', '<leader>fc', ':FzfLua commands<cr>', options)
vim.keymap.set('n', '<leader>ag', ':FzfLua grep_project<cr>', options)
vim.keymap.set('n', '<leader>ss', ':FzfLua blines<cr>', options)
