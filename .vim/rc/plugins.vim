" extended % matching for HTML, LaTeX, and many other languages
source $VIMRUNTIME/macros/matchit.vim

set rtp+=~/.vim/experiment

"""""""""""""""
" Vundle.vim
 filetype off                   " required!

 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

 " let Vundle manage Vundle
 " required!
 Plugin 'VundleVim/Vundle.vim'

 Plugin 'mattn/emmet-vim'
 Plugin 'kchmck/vim-coffee-script'

 Plugin 'Syntastic'
 let g:syntastic_enable_signs=1
 let g:syntastic_auto_loc_list=2
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

 Plugin 'thinca/vim-ref'
 Plugin 'tpope/vim-rails'
 Plugin 'tpope/vim-fugitive'
 Plugin 'ctrlpvim/ctrlp.vim'

 Plugin 'AndrewRadev/switch.vim'
 nnoremap - :Switch<cr>

 Plugin 'airblade/vim-gitgutter'
 nnoremap <silent> ,gg :<C-u>GitGutterToggle<CR>
 nnoremap <silent> ,gh :<C-u>GitGutterLineHighlightsToggle<CR>

 Plugin 'thinca/vim-quickrun'
 Plugin 'Shougo/vimproc'

 Plugin 'honza/vim-snippets'
 if has('lua')
   Plugin 'Shougo/neocomplete'
   Plugin 'Shougo/neosnippet'
   Plugin 'Shougo/neosnippet-snippets'
 endif

 " neocomplete
 let g:neocomplete#enable_at_startup = 0
 let g:neocomplete#enable_smart_case = 1
 let g:neocomplete#sources#syntax#min_keyword_length = 3

 " neosnippet
 let g:neosnippet#enable_snipmate_compatibility = 1
 " Tell Neosnippet about the other snippets
 let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

 " Plugin key-mappings.
 imap <C-k> <Plug>(neosnippet_expand_or_jump)
 smap <C-k> <Plug>(neosnippet_expand_or_jump)
 xmap <C-k> <Plug>(neosnippet_expand_target)

 " SuperTab like snippets behavior.
 " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
 imap <C-k> <Plug>(neosnippet_expand_or_jump)
 "imap <expr><TAB>
 smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
       \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"


"-------

 Plugin 'kana/vim-fakeclip'
 Plugin 'kana/vim-smartinput'
 Plugin 'kana/vim-textobj-user'
 Plugin 'kana/vim-textobj-line'
 Plugin 'nelstrom/vim-textobj-rubyblock'
 Plugin 'mattn/vim-textobj-url'

 Plugin 'rking/ag.vim'

 Plugin 'majutsushi/tagbar'

 Plugin 'epeli/slimux'
 map <C-c><C-c>  :SlimuxREPLSendLine<CR>
 vmap <C-c><C-c> :SlimuxREPLSendSelection<CR>

 Plugin 'tpope/vim-surround'
 Plugin 'scrooloose/nerdcommenter'

 " color scheme
 Plugin 'w0ng/vim-hybrid'

 Plugin 'bronson/vim-trailing-whitespace'

 Plugin 'vim-scripts/AnsiEsc.vim'
 Plugin 'vim-scripts/JavaDecompiler.vim'

 Plugin 'vim-ruby/vim-ruby'
 let g:rubycomplete_buffer_loading = 1
 let g:rubycomplete_classes_in_global = 1
 let g:rubycomplete_rails = 1
 let g:rubycomplete_load_gemfile = 1
 let g:rubycomplete_use_bundler = 1

 Plugin 'pangloss/vim-javascript'
 Plugin 'mxw/vim-jsx'
 let g:jsx_ext_required = 0

 Plugin 'tpope/vim-markdown'
 autocmd BufNewFile,BufReadPost *.md set filetype=markdown


 " golang
 exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
 exe "set rtp+=".globpath($GOPATH, "src/github.com/golang/lint/misc/vim")

call vundle#end()             " required
filetype plugin indent on     " required!
