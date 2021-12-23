"This file is for linking plugins for vim-plug to download.

"Directory where vim-plug saves the plugins
call plug#begin('~/.config/nvim/plugs')



" -- features --

"wiki functionality
Plug 'vimwiki/vimwiki'

"autocompletion, etc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"status line
Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

"move to designated character on screen
Plug 'easymotion/vim-easymotion'

"git integration
Plug 'tpope/vim-fugitive'

"distraction free mode
Plug 'junegunn/goyo.vim'

"nice looking directory tree
Plug 'preservim/nerdtree'

"fuzzy directory search
Plug 'ctrlpvim/ctrlp.vim'

"Smooth scrolling so your eyes don't bleed
Plug 'psliwka/vim-smoothie'

" -- colorschemes --

Plug 'hzchirs/vim-material'

Plug 'ajmwagar/vim-deus'

" -- end --



call plug#end()
