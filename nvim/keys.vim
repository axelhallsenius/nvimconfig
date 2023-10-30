"Here goes settings for keybindings

"set space to leader

map <Space> <leader>

"random quick keybinds

"Alt+hjkl to move between split buffers
nnoremap <A-l> <C-w>l
nnoremap <A-l> <C-w>l
nnoremap <A-l> <C-w>l
nnoremap <A-j> <C-w>j
vnoremap <A-j> <C-w>j
nnoremap <A-j> <C-w>j
vnoremap <A-k> <C-w>k
nnoremap <A-k> <C-w>k
vnoremap <A-k> <C-w>k
inoremap <A-h> <C-w>h
nnoremap <A-h> <C-w>h
vnoremap <A-h> <C-w>h

"Ctrl+Alt+jk to move between buffers in the tab row
inoremap <C-A-k> :bn<CR>
nnoremap <C-A-k> :bn<CR>
vnoremap <C-A-k> :bn<CR>
inoremap <C-A-j> :bp<CR>
nnoremap <C-A-j> :bp<CR>
vnoremap <C-A-j> :bp<CR>

nnoremap <leader>q :bd<CR> 

" plugin specific keybinds

" coc ----
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

"easymotion - easymove
" Move to char
map ä <Plug>(easymotion-bd-f)
nmap ä <Plug>(easymotion-overwin-f)

"change ö to : in normal mode, for quick access
nmap ö :
nmap ; :

"system clipboard paste and yank
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P
nnoremap <leader>y "+y
vnoremap <leader>y "+y

"cpp specific: switch between header and implementation
nmap <leader>h :SwitchSourceHeader<CR>
nmap <leader>fc :ClangFormatAll<CR>

"Toggle NERDTreeToggle 
nnoremap <C-n> :NERDTreeToggle<CR>
tnoremap <Esc> <C-\><C-n>

"ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
