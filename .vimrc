call plug#begin()

" List your plugins here
Plug 'pablopunk/native-sidebar.vim'

call plug#end()

set noswapfile
set encoding=utf-8
set number
set mouse=a

set tabstop=2
set shiftwidth=2
set expandtab

" Status line
hi Status2 guifg=#F6955B guibg=#38A89D
hi Status1 guifg=#008080 guibg=#fabd2f
set statusline=%#Status2#[%f]
set laststatus=2
set fillchars=stl:_,stlnc:_
"set statusline=%=%f

" Use ctrl+T
let g:native_sidebar_shortcut = '<c-t>'
