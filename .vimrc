

"  NeoComplCacheEnable
    " neocomplcache.vim

"---------------------------------------------------------------------------
" TODO: .gvimrcにあるKaoriya系configでいらないものを削除


"---------------------------------------------------------------------------
" Encoding
"---------------------------------------------------------------------------
" set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,iso-2022-jp,sjis,cp932,euc-jp,euc-jisx0213,eucjp-ms


"---------------------------------------------------------------------------
" Vundle.vim
"---------------------------------------------------------------------------
 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'mattn/zencoding-vim'
 Bundle 'nanotech/jellybeans.vim'


 " ref.vim
 Bundle 'thinca/vim-ref'

" rails.vim
 Bundle 'tpope/vim-rails.git'

 " git補助
 Bundle 'tpope/vim-fugitive'

 Bundle 'thinca/vim-quickrun'
 Bundle 'Shougo/unite.vim'

 " vim-scripts repos
 Bundle 'mru.vim'
 Bundle 'surround.vim'
 Bundle 'taglist.vim'
 Bundle 'neocomplcache'
 Bundle 'The-NERD-tree'
 Bundle 'The-NERD-Commenter'
 " うまくいかなかったBundle 'filtering.vim'
 "Bundle 'project.vim'
 "Bundle 'openbrowser.vim'

 " non github repos

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

"---------------------------------------------------------------------------


so ~/Dropbox/config/vimrc_common
