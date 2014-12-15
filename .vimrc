" hide netrw header ( toggle I )
let g:netrw_banner=0

" netrwは常にtree view ( toggle i )
let g:netrw_liststyle = 3

" 'v'でファイルを開くときは右側に開く(default left)
let g:netrw_altv = 1

" 'o'でファイルを開くときは下側に開く(default upper)
let g:netrw_alto = 1


" extended % matching for HTML, LaTeX, and many other languages
source $VIMRUNTIME/macros/matchit.vim

"---------------------------------------------------------------------------
" Encoding
"---------------------------------------------------------------------------
set encoding=utf-8
" set fileencoding=utf-8

" set fileencodings=utf-8,cp932,euc-jp
" MacVimだとfileencodingsは不要
" set fileencodings=ucs-bom,iso-2022-jp,sjis,cp932,euc-jp,euc-jisx0213,eucjp-ms

"---------------------------------------------------------------------------
" 
"---------------------------------------------------------------------------

" 外部のエディタで編集中のファイルが変更された場合、自動で読み込む
set autoread

set clipboard=unnamed

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
 Bundle 'mattn/emmet-vim'
 Bundle 'nanotech/jellybeans.vim'

 Bundle 'kchmck/vim-coffee-script'

 " Syntax checking
 Bundle 'Syntastic'
 let g:syntastic_enable_signs=1
 let g:syntastic_auto_loc_list=2
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

 " ref.vim
 Bundle 'thinca/vim-ref'

" rails.vim
 Bundle 'tpope/vim-rails.git'

 Bundle 'tpope/vim-endwise'

 " git補助
 Bundle 'tpope/vim-fugitive'

 " gitの差分を表示する
 Bundle 'airblade/vim-gitgutter'
 nnoremap <silent> ,gg :<C-u>GitGutterToggle<CR>
 nnoremap <silent> ,gh :<C-u>GitGutterLineHighlightsToggle<CR>

 Bundle 'thinca/vim-quickrun'
 Bundle 'Shougo/unite.vim'
 Bundle 'Shougo/neomru.vim'
 Bundle 'Shougo/unite-outline'
 Bundle 'basyura/unite-rails'

 Bundle 'kana/vim-fakeclip'

 " grep代替. ag入れてるときだけ有効
 Bundle 'rking/ag.vim'

 "Bundle 'jacquesbh/vim-showmarks'


 " vim-scripts repos
 Bundle 'mru.vim'
 Bundle 'surround.vim'
 Bundle 'taglist.vim'
 " tagbar.vim
 Bundle 'renamer.vim'

 "Bundle 'neocomplcache'
 Bundle 'The-NERD-Commenter'

 " color scheme
 Bundle 'w0ng/vim-hybrid'

 Bundle 'bronson/vim-trailing-whitespace'
 let g:extra_whitespace_ignored_filetypes = ["unite"]

 Bundle 'vim-scripts/AnsiEsc.vim'

 Bundle 'vim-ruby/vim-ruby'
 Bundle 'pangloss/vim-javascript'

 Bundle 'tpope/vim-markdown'
 autocmd BufNewFile,BufReadPost *.md set filetype=markdown

 Bundle 'itchyny/calendar.vim'
 let g:calendar_google_calendar = 1
 let g:calendar_google_task = 1

 " Bundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
 " set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

 "うまくいかなかった
 "Bundle 'filtering.vim'
 "Bundle 'kana/vim-textobj-line'
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
