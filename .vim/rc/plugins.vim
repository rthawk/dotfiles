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

 Plugin 'airblade/vim-gitgutter'
 nnoremap <silent> ,gg :<C-u>GitGutterToggle<CR>
 nnoremap <silent> ,gh :<C-u>GitGutterLineHighlightsToggle<CR>

 Plugin 'thinca/vim-quickrun'

 Plugin 'SirVer/ultisnips'
 let g:UltiSnipsExpandTrigger="<C-k>"
 let g:UltiSnipsJumpForwardTrigger="<c-b>"
 let g:UltiSnipsJumpBackwardTrigger="<c-z>"
 let g:UltiSnipsEditSplit="vertical"

 Plugin 'honza/vim-snippets'

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
