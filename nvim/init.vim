
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'nvie/vim-flake8'
Plug 'tell-k/vim-autopep8'
call plug#end()

syntax enable

set tabstop=4
set number
set background=dark
set mouse=a
set showcmd
set cursorline
set hlsearch
set ignorecase
set autoindent
colorscheme gruvbox

nnoremap <C-o> :NERDTreeToggle <cr>
nnoremap <C-s> :w! <cr>
nnoremap <C-q> :q! <cr>
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
