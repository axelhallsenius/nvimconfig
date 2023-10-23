"Here I source the different parts of the config. My ambition is to keep
"the init.vim less cluttered. 
"
"The source where I add the git repos for vim-plug to do its magic
source $HOME/.config/nvim/pluginList.vim
"settings for appearance, functionality and the editor
source $HOME/.config/nvim/settings.vim
"keybindings
source $HOME/.config/nvim/keys.vim

"here are some other things for quick access

"colorscheme:
"set background=dark
colorscheme base16-tomorrow-night-eighties
let g:airline_theme='base16_tomorrow_night_eighties'

highlight! link SignColumn LineNr

"show line numbers
set number

syntax on
filetype plugin indent on

"tab behaviour
set shiftwidth=4
set tabstop=4
set expandtab

"ignore capitals during search, but does not when searching specifically for
"caps
set ignorecase
set smartcase
set smartindent

"no backup files
set nobackup

"set longer history
set history=200

"removing auto comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set guifont=Fira\ Code:h12
