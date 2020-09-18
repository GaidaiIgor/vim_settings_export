set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mkitt/tabline.vim'
Plugin 'c9s/gsession.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'dkprice/vim-easygrep'
Plugin 'vim-airline/vim-airline'
Plugin 'wojtekmach/vim-rename'
Plugin 'ycm-core/YouCompleteMe'
call vundle#end() 
filetype plugin indent on

let mapleader=","

" papercolor-theme
set t_Co=256 "Color number
set background=dark
let g:PaperColor_Dark_Override={'background':'#000000'}
colorscheme PaperColor

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 0

" nerdcommenter
let g:NERDDefaultAlign = 'left'
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" custom
nnoremap [1;3A ddkPj==k== "<alt-up>
nnoremap [1;3B ddpk==j== "<alt-down>
nnoremap <space> :nohlsearch<CR>
nnoremap <silent> @ :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" Compile and copy to jobs
nnoremap <F4> :!make; cp %:t:r jobs/%:t:r<CR>
" Compile, copy and run
nnoremap <F5> :!make; cp %:t:r jobs/%:t:r; cd jobs/; time ./%:t:r; cd ../..<CR>
nmap <leader>ih a!-<C-o>:norm 138i-<CR><Right><Right><CR><CR>-<C-o>:norm 138i-<CR><Up><space>
nnoremap <leader>hw :lclose<CR>
" set quick access to tabs
nnoremap 1 1gt
nnoremap 2 2gt
nnoremap 3 3gt
nnoremap 4 4gt
nnoremap 5 5gt
nnoremap 6 6gt
nnoremap 7 7gt
nnoremap 8 8gt
nnoremap 9 9gt
nnoremap 0 10gt
" set switch between last tabs
let g:lasttab = 1
nmap q :exe "tabn ".g:lasttab<CR>
nmap <c-r> :redo<CR>
au TabLeave * let g:lasttab = tabpagenr()

command! W w
command! Q q

"let fortran_free_source=1
let fortran_do_enddo=1
let fortran_more_precise=1
set number
set ruler

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set bs=2

set incsearch
set ignorecase
set smartcase
set hlsearch "highlight matches

set wildmenu
set showmatch
set autoread
set switchbuf+=usetab,newtab

set undofile
set undodir=/home/gaidai/.vimundo/
set undolevels=999999

set completeopt-=preview
syntax on

" Disable sounds
set belloff=all

" Fixes syntax highligh crashes for long files
set redrawtime=10000
