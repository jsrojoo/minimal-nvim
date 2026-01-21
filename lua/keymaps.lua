vim.g.mapleader = " "

local HOME_PATH       = vim.fn.expand("$HOME")
local VIMRC_FILE_PATH = vim.fn.expand("$MYVIMRC")
local VIMRC_DIR_PATH  = vim.fn.fnamemodify(VIMRC_FILE_PATH, ":h")

local LUA_KEYMAPS     = VIMRC_DIR_PATH .. '/lua/keymaps.lua'
local LUA_OPTIONS     = VIMRC_DIR_PATH .. '/lua/options.lua'
local LUA_PLUGINS     = VIMRC_DIR_PATH .. '/lua/plugins'

local default_options = { silent = true, remap = true, }

vim.keymap.set('n', '<space>', '<nop>', { silent = true, remap = false })

vim.keymap.set('n', '<leader>q', ':q!<cr>', default_options)
vim.keymap.set('n', '<leader>w', ':w<cr>', default_options)

vim.keymap.set('n', '<leader>ei', ':e $MYVIMRC<cr>', default_options)
vim.keymap.set('n', '<leader>ek', ':e ' .. LUA_KEYMAPS .. '<cr>', default_options)
vim.keymap.set('n', '<leader>eo', ':e ' .. LUA_OPTIONS .. '<cr>', default_options)
vim.keymap.set('n', '<leader>ep', ':e ' .. LUA_PLUGINS .. '<cr>', default_options)

vim.keymap.set('n', '<leader>fe', vim.lsp.buf.format, default_options)

vim.keymap.set('n', '<leader>fo', ':Oil<CR>', default_options)
vim.keymap.set('n', '<tab><tab>', '<C-^>', default_options)

vim.keymap.set('n', '<leader>fa', ':FzfLua files<cr>', default_options)
vim.keymap.set('n', '<leader>fg', ':FzfLua git_files<cr>', default_options)
vim.keymap.set('n', '<leader>fc', ':FzfLua commands<cr>', default_options)
vim.keymap.set('n', '<leader>fh', ':FzfLua helptags<cr>', default_options)
vim.keymap.set('n', '<leader>fk', ':FzfLua keymaps<cr>', default_options)
vim.keymap.set('n', '<leader>ag', ':FzfLua grep_project<cr>', default_options)
vim.keymap.set('n', '<leader>ss', ':FzfLua blines<cr>', default_options)

vim.keymap.set('n', '<leader>mp', '<Plug>MarkdownPreview<cr>', default_options)

vim.keymap.set('n', '<leader>gs', ':G <cr>', default_options)
vim.keymap.set('n', '<leader>gl', ':G log<cr>', default_options)
vim.keymap.set('n', '<leader>gb', ':GBrowse!<cr>', default_options)

