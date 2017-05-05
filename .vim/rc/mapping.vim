filetype off
filetype plugin indent off

nnoremap ,, '
nnoremap ,c :
nnoremap ,s :w<CR>
nnoremap ,w <C-W>
inoremap <C-J> <ESC>:

nnoremap ,nn <ESC>i<C-R>=strftime("%H:%M")<CR>
nnoremap ,nd <ESC>i<C-R>=strftime("* %Y-%m-%d (%a) %H:%M")<CR>
nnoremap ,nt <ESC>i<C-R>=strftime("%Y-%m-%d")<CR>

nnoremap ,h :nohlsearch<CR>
nnoremap <Leader>bd :bd!<CR>

nnoremap ,m :marks<CR>
" nnoremap ,l :buffers<CR>
nnoremap ,r :reg<CR>
nnoremap ,L :tabs<CR>
nnoremap ,t :tabnew<CR>
nnoremap ,T :tabnew

" save
nnoremap <C-S> :w<CR>
nnoremap <C-X><C-S> :w<CR>
nnoremap <C-X><C-W> :w

" select all
nnoremap <C-X><C-H> ggVG

nnoremap <C-X><C-N> :nohlsearch<CR>

" 分割したvimrcファイルを開く
nnoremap ,zr :tabnew ~/.vim/rc/<CR>

" tags jump
nnoremap <C-]> g<C-]>

nnoremap <Space>e :Explore.<CR>

nnoremap <Space>r :%s/
vnoremap <Space>r :s/

" 入力補助
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

ab #l ------------------------------------------
" iabbrev #lg logger
ia ,e <ESC>
ia ,m <CR>

" only command line mode
cabbrev E Explore
cabbrev S Sexplore
cabbrev V Vexplore
cabbrev ,e <ESC>
cabbrev ,m <CR>

nnoremap <C-X><C-L> :TagbarToggle<CR>
nnoremap <F8> :TagbarToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" unite.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 入力モードで開始する
let g:unite_enable_start_insert=1

" バッファ一覧
nnoremap <silent> ,b :<C-u>Unite buffer<CR>
nnoremap <silent> ,l :<C-u>Unite buffer<CR>
" タブ一覧
nnoremap <silent> ,ut :<C-u>Unite tab<CR>
" ファイル一覧
nnoremap <silent> <Space>f :Unite -buffer-name=pwd_files file<CR>
nnoremap <silent> <Space>F :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> <Space>,f :Unite -buffer-name=pwd_files_recursively file_rec/async<CR>
nnoremap <silent> <Space>,F :UniteWithBufferDir -buffer-name=pwd_files_recursively file_rec/async<CR>

" レジスタ一覧
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
" 最近使用したファイル一覧
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
nnoremap <silent> <Space>E :<C-u>Unite file_mru<CR>
" 常用セット
nnoremap <silent> ,u<Space> :<C-u>Unite buffer file_mru<CR>
" 全部乗せ
nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>

" Unite outline
nnoremap <silent> ,uo :<C-u>Unite outline<CR>

" git ls-files. プロジェクト内ファイル検索
nnoremap <silent> <Space>o :<C-u>Unite git_cached git_untracked<CR>

" command
nnoremap <silent> <Space>a :<C-u>Unite command mapping<CR>

" grep
nnoremap <silent> <Space>g :Unite -buffer-name=gitgrep grep/git:./:-I<CR>
nnoremap <silent> <Space>/ :Unite -buffer-name=grep grep:./:-iR<CR>

let g:unite_source_grep_max_candidates = 200
	if executable('ag')
	  " Use ag(the silver searcher)
	  let g:unite_source_grep_command = 'ag'
	  let g:unite_source_grep_default_opts =
	  \ '-i --vimgrep --hidden --ignore ' .
	  \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
	  let g:unite_source_grep_recursive_opt = ''
endif

" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q

command! -nargs=1 -complete=command
            \ CommandOutput
            \ call cmdout#capture_command_output(<f-args>)

filetype plugin indent on
