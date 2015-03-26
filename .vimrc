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

set clipboard=unnamed,autoselect

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

 Bundle 'AndrewRadev/switch.vim'
 nnoremap - :Switch<cr>

 " gitの差分を表示する
 Bundle 'airblade/vim-gitgutter'
 nnoremap <silent> ,gg :<C-u>GitGutterToggle<CR>
 nnoremap <silent> ,gh :<C-u>GitGutterLineHighlightsToggle<CR>

 Bundle 'thinca/vim-quickrun'
 Bundle 'Shougo/unite.vim'
 Bundle 'Shougo/vimproc'
 Bundle 'Shougo/neomru.vim'
 Bundle 'Shougo/unite-outline'

 Bundle 'honza/vim-snippets'
 if has('lua')
   Bundle 'Shougo/neocomplete'
   Bundle 'Shougo/neosnippet'
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

 Bundle 'yuku-t/unite-git'
 Bundle 'basyura/unite-rails'

 Bundle 'kana/vim-fakeclip'
 Bundle 'kana/vim-textobj-user'
 Bundle 'nelstrom/vim-textobj-rubyblock'

 " grep代替. ag入れてるときだけ有効
 Bundle 'rking/ag.vim'

 "Bundle 'jacquesbh/vim-showmarks'


 " vim-scripts repos
 Bundle 'mru.vim'
 Bundle 'surround.vim'
 Bundle 'taglist.vim'
 " tagbar.vim
 Bundle 'renamer.vim'

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

if has('lua') && exists('g:loaded_neocomplete')
    " Disable AutoComplPop.
    let g:acp_enableAtStartup = 0
    " Use neocomplete.
    let g:neocomplete#enable_at_startup = 1
    " Use smartcase.
    let g:neocomplete#enable_smart_case = 1
    " Set minimum syntax keyword length.
    let g:neocomplete#sources#syntax#min_keyword_length = 3
    let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

    " Plugin key-mappings.
    inoremap <expr><C-g> neocomplete#undo_completion()
    inoremap <expr><C-l> neocomplete#complete_common_string()

    " Recommended key-mappings.
    " <CR>: close popup and save indent.
    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
        return neocomplete#close_popup() . "\<CR>"
        " For no inserting <CR> key.
        "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
    endfunction
    " <C-h>, <BS>: close popup and delete backword char.
    inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
    inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
    inoremap <expr><C-y>  neocomplete#close_popup()
    inoremap <expr><C-e>  neocomplete#cancel_popup()

    " Enable heavy omni completion.
    if !exists('g:neocomplete#sources#omni#input_patterns')
        let g:neocomplete#sources#omni#input_patterns = {}
    endif
    let g:neocomplete#sources#omni#input_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
    let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
    let g:neocomplete#sources#omni#input_patterns.c = '\%(\.\|->\)\h\w*'
    let g:neocomplete#sources#omni#input_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

    " Enable omni completion.
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

    " キャッシュしないファイル名
    let g:neocomplete#sources#buffer#disabled_pattern = '\.log\|\.log\.\|\.jax'
    " 自動補完を行わないバッファ名
    let g:neocomplete#lock_buffer_name_pattern = '\.log\|\.log\.\|.*quickrun.*\|.jax'

endif

" golang
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")

so ~/Dropbox/config/vimrc_common
