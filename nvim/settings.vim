"Here goes settings for etc things, like preferences

" -- native stuff --

"set spelllang=en_us,sv

" -- plugin stuff --


" -- graphical and animation stuff --

"neovide specific
"let g:neovide_cursor_animation_length=0.03
"let g:neovide_input_use_logo=v:false
"let g:neovide_refresh_rate=60

"let g:neovide_cursor_antialiasing=v:true

set termguicolors

"coc settings

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
"set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=1

"Enables tabline and airline
set noshowmode
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


"if any file in the nvim folder is writen to, source current neovide session
"from configs TODO
"if $=*.vim

"vimtex
" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
let g:vimtex_compiler_method = 'latexmk'


