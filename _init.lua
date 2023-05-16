
vim.cmd('inoremap kj <Esc>')

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd('syntax on')
vim.cmd('set guicursor=i:block')
vim.cmd('set updatetime=300')
vim.cmd('set signcolumn=yes')

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.swapfile = false
vim.opt.guicursor = block


vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
-- vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

