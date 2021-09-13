"This file is for linking plugins for vim-plug to download.

"stdpath('config') . '/init.vim'

"Directory where vim-plug saves the plugins
call plug#begin('~/.config/nvim/plugs')
" -- features

"Plug ''
Plug 'vimwiki/vimwiki'
"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-fugitive'

"Plug ''
" -- graphical/colorschemes
"colorscheme material
Plug 'hzchirs/vim-material'
Plug 'ajmwagar/vim-deus'

call plug#end()
