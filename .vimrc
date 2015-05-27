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

set complete=.,w,b,u,k,i
"---------------------------------------------------------------------------
" Vundle.vim
"---------------------------------------------------------------------------
 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required!
 Plugin 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Plugin 'mattn/emmet-vim'
 Plugin 'mattn/vim-textobj-url'

 Plugin 'nanotech/jellybeans.vim'

 Plugin 'kchmck/vim-coffee-script'

 " Syntax checking
 Plugin 'Syntastic'
 let g:syntastic_enable_signs=1
 let g:syntastic_auto_loc_list=2
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

 " ref.vim
 Plugin 'thinca/vim-ref'

" rails.vim
 Plugin 'tpope/vim-rails.git'

 " git補助
 Plugin 'tpope/vim-fugitive'

 Plugin 'AndrewRadev/switch.vim'
 nnoremap - :Switch<cr>

 " gitの差分を表示する
 Plugin 'airblade/vim-gitgutter'
 nnoremap <silent> ,gg :<C-u>GitGutterToggle<CR>
 nnoremap <silent> ,gh :<C-u>GitGutterLineHighlightsToggle<CR>

 Plugin 'thinca/vim-quickrun'
 Plugin 'Shougo/unite.vim'
 Plugin 'Shougo/vimproc'
 Plugin 'Shougo/neomru.vim'
 Plugin 'Shougo/unite-outline'

 Plugin 'honza/vim-snippets'
 if has('lua')
   Plugin 'Shougo/neosnippet'
   Plugin 'Shougo/neosnippet-snippets'
 endif

 " Enable snipMate compatibility feature.
 let g:neosnippet#enable_snipmate_compatibility = 1

 " Tell Neosnippet about the other snippets
 let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

 " Plugin key-mappings.
 imap <C-k> <Plug>(neosnippet_expand_or_jump)
 smap <C-k> <Plug>(neosnippet_expand_or_jump)
 xmap <C-k> <Plug>(neosnippet_expand_target)

 " SuperTab like snippets behavior.
 imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)"
 \: pumvisible() ? "\<C-n>" : "\<TAB>"
 smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)"
 \: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

 Plugin 'yuku-t/unite-git'
 Plugin 'basyura/unite-rails'

 Plugin 'kana/vim-fakeclip'
 Plugin 'kana/vim-textobj-user'
 Plugin 'kana/vim-smartinput'
 Plugin 'nelstrom/vim-textobj-rubyblock'
 Plugin 'kana/vim-textobj-line'

 " grep代替. ag入れてるときだけ有効
 Plugin 'rking/ag.vim'

 Plugin 'majutsushi/tagbar'

 Plugin 'epeli/slimux'
 map <C-c><C-c>  :SlimuxREPLSendLine<CR>
 vmap <C-c><C-c> :SlimuxREPLSendSelection<CR>

 " vim-scripts repos
 Plugin 'surround.vim'
 Plugin 'taglist.vim'

 Plugin 'The-NERD-Commenter'

 " color scheme
 Plugin 'w0ng/vim-hybrid'

 Plugin 'bronson/vim-trailing-whitespace'
 let g:extra_whitespace_ignored_filetypes = ["unite"]

 Plugin 'vim-scripts/AnsiEsc.vim'

 Plugin 'vim-ruby/vim-ruby'
 let g:rubycomplete_buffer_loading = 1
 let g:rubycomplete_classes_in_global = 1
 let g:rubycomplete_rails = 1
 let g:rubycomplete_load_gemfile = 1
 let g:rubycomplete_use_bundler = 1

 Plugin 'pangloss/vim-javascript'

 Plugin 'tpope/vim-markdown'
 autocmd BufNewFile,BufReadPost *.md set filetype=markdown

 "うまくいかなかった
 "Plugin 'filtering.vim'
 "Plugin 'jacquesbh/vim-showmarks'

 " non github repos

 filetype plugin indent on     " required!
 "
 " Brief help
 " :PluginList          - list configured bundles
 " :PluginInstall(!)    - install(update) bundles
 " :PluginSearch(!) foo - search(or refresh cache first) for foo
 " :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Plugin command are not allowed..

"---------------------------------------------------------------------------

" golang
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")

so ~/Dropbox/config/vimrc_common
