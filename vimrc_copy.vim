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
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-repeat'
  Plugin 'airblade/vim-gitgutter'

" all the plugins have been added (required!)
  call vundle#end()

" turn filetype back on
  filetype plugin indent on

" include organized config
  runtime! config/general.vim

" pathogen will load the other modules
  execute pathogen#infect()

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

" set leader key
let mapleader=","

" we want to tell the syntastic module when to run
" we want to see code highlighting and checks when  we open a file
" but we don't care so much that it reruns when we close the file
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
  let g:syntastic_javascript_checkers = ['standard']

" we also want to get rid of accidental trailing whitespace on save
  autocmd BufWritePre * :%s/\s\+$//e

" tell vim to allow you to copy between files, remember your cursor
" position and other little nice things like that
  set viminfo='100,\"2500,:200,%,n~/.viminfo

