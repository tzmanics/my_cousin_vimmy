" use zsh
  set shell=/bin/zsh

" turn on filetype while setting up (required!)
  set nocompatible
  filetype off

" make vundle go
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin('~/.vim/plugins')

" set up ctrlp
  set runtimepath^=~/.vim/bundle/ctrlp.vim

" let Vundle manage Vundle (required!)
  Plugin 'gmarik/Vundle.vim'

  Plugin 'altercation/vim-colors-solarized'
  Plugin 'godlygeek/tabular'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'michaeljsmith/vim-indent-object'
  Plugin 'pangloss/vim-javascript'
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/syntastic'
  Plugin 'tpope/vim-markdown'
  Plugin 'nathanaelkane/vim-indent-guides'
  Plugin 'rking/ag.vim'

" all the plugins have been added (required!)
  call vundle#end()

" turn filetype back on
  filetype plugin indent on

" include organized config
  runtime! config/general.vim

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<c-b>"
  let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
  let g:UltiSnipsEditSplit="vertical"

