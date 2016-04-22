"Add ~/.vim/bundle contents to runtime path
execute pathogen#infect()
"filetype plugins on
filetype plugin on

"a fix for weird backspace behavour
set backspace=indent,eol,start

"auto indent settings
set tabstop=8
set expandtab
set shiftwidth=4
set cindent 
set autoindent
filetype indent on
set smartindent
autocmd BufRead,BufWritePre *.sh normal gg=G

"misc....
set number
set background=dark
set t_Co=256
syntax on
set encoding=utf-8

set mouse=a

colorscheme peaksea 

set nofoldenable    " disable folding

"set Ctrl+n to toggle NERDtree
map <C-n> :NERDTreeToggle<CR>

"Syntastic basic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic quiet warnings

"make vim-airline work
let g:airline_powerline_fonts = 1
set laststatus=2
set guifont=Source\ Code\ Pro\ for\ Powerline:h11 
