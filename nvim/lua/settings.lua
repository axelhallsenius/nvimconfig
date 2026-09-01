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
vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('i', '<A-h>', '<C-w>h')
vim.keymap.set('v', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-S-h>', '<C-w>H')
vim.keymap.set('i', '<A-S-h>', '<C-w>H')
vim.keymap.set('v', '<A-S-h>', '<C-w>H')

vim.keymap.set('n', '<A-j>', '<C-w>j')
vim.keymap.set('i', '<A-j>', '<C-w>j')
vim.keymap.set('v', '<A-j>', '<C-w>j')
vim.keymap.set('n', '<A-S-j>', '<C-w>J')
vim.keymap.set('i', '<A-S-j>', '<C-w>J')
vim.keymap.set('v', '<A-S-j>', '<C-w>J')

vim.keymap.set('n', '<A-k>', '<C-w>k')
vim.keymap.set('i', '<A-k>', '<C-w>k')
vim.keymap.set('v', '<A-k>', '<C-w>k')
vim.keymap.set('n', '<A-S-k>', '<C-w>K')
vim.keymap.set('i', '<A-S-k>', '<C-w>K')
vim.keymap.set('v', '<A-S-k>', '<C-w>K')

vim.keymap.set('n', '<A-l>', '<C-w>l')
vim.keymap.set('i', '<A-l>', '<C-w>l')
vim.keymap.set('v', '<A-l>', '<C-w>l')
vim.keymap.set('n', '<A-S-l>', '<C-w>L')
vim.keymap.set('i', '<A-S-l>', '<C-w>L')
vim.keymap.set('v', '<A-S-l>', '<C-w>L')

--switch buffers in the tab line
vim.keymap.set('n', '<C-h>', ':bp<CR>')
--vim.keymap.set('i', '<A-j>', ':bp<CR>')
--vim.keymap.set('v', '<A-j>', ':bp<CR>')

vim.keymap.set('n', '<C-l>', ':bn<CR>')
--vim.keymap.set('i', '<A-k>', ':bn<CR>')
--vim.keymap.set('v', '<A-k>', ':bn<CR>')

vim.keymap.set('n', 'ö', ':')
vim.keymap.set('n', ';', ':')


vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('n', '<leader>P', '"+P')
vim.keymap.set('v', '<leader>p', '"+p')
vim.keymap.set('v', '<leader>P', '"+P')


vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>Y', '"+Y')

vim.keymap.set('t', '<esc>',     '<C-\\><C-N>', opts)
vim.keymap.set('t', '<A-h>',  '<C-\\><C-N><C-w>h', opts)
vim.keymap.set('t', '<A-j>',  '<C-\\><C-N><C-w>j', opts)
vim.keymap.set('t', '<A-k>',    '<C-\\><C-N><C-w>k', opts)
vim.keymap.set('t', '<A-l>', '<C-\\><C-N><C-w>l', opts)

-- keep split when closing buffers
vim.keymap.set("n", "<leader>wq", "<cmd>bp|bd #<CR>", { desc = "Close Buffer; Retain Split" })

require("diagnostics")
