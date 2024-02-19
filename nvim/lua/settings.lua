vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nobackup")
vim.cmd("set nowritebackup")
vim.cmd("set number")
vim.cmd("set ignorecase")


vim.g.mapleader = " "
vim.opt.mouse = ""

-- ctrl-direction to move to split. ctrl-Direction to move split itself
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('i', '<C-h>', '<C-w>h')
vim.keymap.set('v', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-S-h>', '<C-w>H')
vim.keymap.set('i', '<C-S-h>', '<C-w>H')
vim.keymap.set('v', '<C-S-h>', '<C-w>H')

vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('i', '<C-j>', '<C-w>j')
vim.keymap.set('v', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-S-j>', '<C-w>J')
vim.keymap.set('i', '<C-S-j>', '<C-w>J')
vim.keymap.set('v', '<C-S-j>', '<C-w>J')

vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('i', '<C-k>', '<C-w>k')
vim.keymap.set('v', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-S-k>', '<C-w>K')
vim.keymap.set('i', '<C-S-k>', '<C-w>K')
vim.keymap.set('v', '<C-S-k>', '<C-w>K')

vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('i', '<C-l>', '<C-w>l')
vim.keymap.set('v', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-S-l>', '<C-w>L')
vim.keymap.set('i', '<C-S-l>', '<C-w>L')
vim.keymap.set('v', '<C-S-l>', '<C-w>L')

--switch buffers in the tab line
vim.keymap.set('n', '<A-j>', ':bp<CR>')
--vim.keymap.set('i', '<A-j>', ':bp<CR>')
--vim.keymap.set('v', '<A-j>', ':bp<CR>')

vim.keymap.set('n', '<A-k>', ':bn<CR>')
--vim.keymap.set('i', '<A-k>', ':bn<CR>')
--vim.keymap.set('v', '<A-k>', ':bn<CR>')

vim.keymap.set('n', 'ö', ':')
vim.keymap.set('n', ';', ':')


vim.keymap.set('n', '<leader>p', '"*p')
vim.keymap.set('n', '<leader>P', '"*P')
vim.keymap.set('v', '<leader>p', '"*p')
vim.keymap.set('v', '<leader>P', '"*P')

--why no work?
vim.keymap.set('n', '<leader>y', '"*y')
vim.keymap.set('n', '<leader>Y', '"*Y')
vim.keymap.set('v', '<leader>y', '"*y')
vim.keymap.set('v', '<leader>Y', '"*Y')
