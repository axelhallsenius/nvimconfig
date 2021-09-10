"This file is for linking plugins for vim-plug to download.

"stdpath('config') . '/init.vim'

"Directory where vim-plug saves the plugins
call plug#begin('~/.config/nvim/plugs')
" -- features

"Plug ''
Plug 'vimwiki/vimwiki'
"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" -- graphical/colorschemes
"colorscheme material
Plug 'hzchirs/vim-material'

call plug#end()
