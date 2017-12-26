syntax enable
set background=dark

" solarized options
  let g:solarized_termcolors=256
  colorscheme solarized

" set tabs
  set expandtab tabstop=2 softtabstop=2 shiftwidth=2
  set smarttab

" highlight trailing whitespace
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
  set list

" Removes trailing spaces
  function! TrimWhiteSpace()
    %s/\s\+$//e
  endfunction
  nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>

" show line numbers
  set number

" Add full file path to your existing statusline
  set statusline+=%F

" open nerdTree w control n
  map <C-n> :NERDTreeToggle<CR>
" set ruler at char 80
  set colorcolumn=80

" to make backspace work
  set backspace=2

" turn on mouse
"  set mouse=a

" use system clipboard
  set clipboard=unnamed

" add silver searcher
  let g:ackprg = 'ag --vimgrep'
