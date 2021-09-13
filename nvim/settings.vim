"Here goes settings for etc things, like preferences

" -- native stuff --


" -- plugin stuff --


" -- graphical and animation stuff --

"neovide specific
let g:neovide_cursor_animation_length=0.03
let g:neovide_input_use_logo=v:false
"let g:neovide_refresh_rate=140
let neovide_remember_window_size = v:true

set termguicolors

"plugin settings
"tree sitter

""consistent syntax highlighting
"lua <<EOF
"require'nvim-treesitter.configs'.setup {
"  highlight = {
"    enable = true,
"    custom_captures = {
"      ["foo.bar"] = ''Identifier'?????',
"    },
"    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
"    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
"    -- Using this option may slow down your editor, and you may see some duplicate highlights.
"    -- Instead of true it can also be a list of languages
"    additional_vim_regex_highlighting = false,
"  },
"}
"EOF

"tree sitter based folding
"set foldmethod=expr
"set foldexpr=nvim_treesitter#foldexpr()

"coc settings

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"Enables tabline and airline
set noshowmode
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


"if any file in the nvim folder is writen to, source current neovide session
"from configs TODO
"if $=*.vim


