set nocompatible
let mapleader=","
set number
colorscheme slate
syntax on
set shiftwidth=4
set tabstop=4
set backspace=eol,indent,start
set expandtab
set autoindent

" fix the file browser
let g:netrw_banner=0
let g:netrw_altv=1 " open to the right
"let g:netrw_liststyle=3
let g:netrw_broswe_split=4
"let g:netrw_list_hide=netrw_gitignore#Hide()

" enable fuzzy file find
set path+=**

" folds
filetype plugin on
set foldenable
set foldmethod=syntax
set foldlevel=0

" fix multis
nnoremap <C-j> :wincmd j<cr>
nnoremap <C-k> :wincmd k<cr>
nnoremap <C-l> :wincmd l<cr>
nnoremap <C-h> :wincmd h<cr>
nnoremap <Leader>n :bn <cr>
nnoremap <Leader>p :bp <cr>
nnoremap <Leader>g :tabp <cr>
nnoremap <Leader>h :tabn <cr>


map <space> za

set wildmenu

nnoremap <Leader>e :e <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <Leader>s :split <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <Leader>v :vsplit <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <Leader>t :tabnew <C-R>=expand('%:p:h') . '/'<CR><CR>

packloadall
silent! helptags ALL

" Configure ALE
let g:ale_go_go_executable = '/home/user/bin/go'
let g:ale_go_langserver_executable = '/usr/local/src/gotools/bin/gopls'
let g:ale_gopls_options ='--mode stdio'
let g:ale_sign_column_always = 1
let g:ale_lint_delay = 5000
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_fixers = {'*' : ['trim_whitespace']}
let g:airline#extensions#ale#enabled = 1

