-- allows case insensitive <TAB> completion
vim.opt.ignorecase = true

-- render tabs and trailing spaces
vim.opt.list = true

vim.opt.number = true
vim.opt.relativenumber = true

-- vim.opt.indent = true

vim.opt.expandtab    =  true
vim.opt.shiftwidth   =  2
vim.opt.softtabstop  =  2
vim.opt.tabstop      =  2

vim.opt.smartindent = true
vim.opt.autoindent = true

-- stop annoying number/errors expansion
vim.opt.signcolumn = 'yes:3'

vim.opt.clipboard = 'unnamedplus'

vim.opt.list = true
vim.opt.listchars = {
  -- tab = "│·",
  extends = "⟩",
  precedes = "⟨",
  trail = "·",
}
