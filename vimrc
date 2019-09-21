colorscheme slate
syntax on
set number
set ts=4
set shiftwidth=4
set textwidth=120
set backspace=eol,indent,start
set confirm
set showcmd
set nowrap
" enable indent code folds
set foldenable
set foldlevelstart=0
set foldmethod=indent
nmap <space> za
set autoindent
" rearrange nav buttons
map j gj
map k gk
" move between buffers with hjkl
map <C-j> :wincmd j<cr>
map <C-k> :wincmd k<cr>
map <C-l> :wincmd l<cr>
map <C-h> :wincmd h<cr>
" simplify editing multiple files
set wildmenu
" enable autocomplete
filetype plugin on
" fix markdown syntax highlighting
au BufRead,BufNewFile *.md set filetype=markdown
" date insertion
inoremap <C-t> <C-R>=strftime("%d %b %y %H:%M:%S%z")<cr>
