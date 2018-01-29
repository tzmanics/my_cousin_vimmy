"""""""GENERAL FORMAT"""""""
" Show line numbers
set number

" Marker at 80 char
set colorcolumn=80

"""""""STYLIN"""""""
" Change color scheme
set background=dark

" Set tabs to 2 spaces
set expandtab
set shiftwidth=2
set softtabstop=2

"""""""LANGUAGE SPECIFIC"""""""
" Use JSX syntax highlighting on .js files
let g:jsx_ext_required = 0

"""""""PLUGIN SPECIFIC"""""""
nmap <C-n> :NERDTreeToggle<CR>

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'vim-syntastic/syntastic'
Plug 'mxw/vim-jsx'
call plug#end()
