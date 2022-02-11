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
colorscheme chalk
let g:airline_theme='base16_chalk'

"show relative line numbers
set number

syntax on
filetype plugin indent on

"tab behaviour
"set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
