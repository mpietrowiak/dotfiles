call plug#begin()
Plug 'pablopunk/native-sidebar.vim'
Plug 'sbdchd/neoformat'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:neoformat_try_node_exe = 1
let g:neoformat_only_msg_on_error = 1

autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.mjs,*.mts,*.json silent! Neoformat

au BufRead,BufNewFile *.mts set filetype=typescript


let g:netrw_keepdir = 1

set noswapfile
set encoding=utf-8
set number
set mouse=a
set hidden
set tabstop=2
set shiftwidth=2
set expandtab
set autochdir

" Status line
hi Status2 guifg=#F6955B guibg=#38A89D
hi Status1 guifg=#008080 guibg=#fabd2f
hi VertSplit ctermbg=NONE cterm=NONE ctermfg=239 
hi Keyword ctermfg=11

" Fix CoC
hi CocFloating ctermbg=8

" Fix Status bar
set statusline=%#Status2#[%f]
set laststatus=2
set fillchars=stl:_,stlnc:_,vert:\|

" Use ctrl+T
let g:native_sidebar_shortcut = '<c-t>'
















"CoC Settings
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
 
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"Ultisnips Settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
 
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
 
"coc-snippets Settings
"inoremap <silent><expr> <TAB>
"      \ coc#pum#visible() ? coc#_select_confirm() :
"      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"      \ CheckBackspace() ? "\<TAB>" :
"      \ coc#refresh()
"
"function! CheckBackspace() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"
"let g:coc_snippet_next = '<tab>'
