syntax on
set ttyfast
set notitle
set number

set nocursorline
set nocursorcolumn

set showmatch

set ignorecase
set smartcase

set autoread
set history=1000

set nobackup
set noswapfile
set noundofile
set backspace=indent,eol,start
set laststatus=2

set modeline
set modelines=5

set hlsearch
set mouse=a
set guioptions-=T
set vb t_vb= " ビープ音を鳴らさない

" スペースをタブとして使用する ts= 1個のタブに使用するスペースの数
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" set foldmethod=syntax

" 改行コードの自動認識
set fileformats=unix,dos,mac

set cmdheight=1
" ステータスラインの表示設定
set statusline=[%{CountBuffers()}\ buffers]\ %F%m%r%h%w\ [%{&fileencoding}]\ %{&fileformat}\ [POS=%04l,%04v][%p%%]\ [LEN=%L]


" add git status on statusLine
set statusline+=%{fugitive#statusline()}

" g?でrot13ではなく、migemoで?する
if has('migemo')
	set migemo
endif

" コマンドラインに補完候補表示
set wildmenu
set wildmode=list:full
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*DS_Store*

"特殊文字(SpecialKey)の見える化。listcharsはlcsでも設定可能。
"trailは行末スペース。
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<

" ctags
if has('path_extra')
    "set tags+=tags
    set tags+=tags;
endif


if has('unix')

endif

if has('win32') || has('win64')

endif

if has('Mac')
    " Mac Clipboard
    vmap <silent> sy :!pbcopy; pbpaste<CR>
    map <silent> sp <esc>o<esc>v:!pbpaste<CR>
endif

if has('kaoriya')
    "入力モードに入った時に、必ず日本語入力をオフにする
    "IminsertOff
endif

" ステータスラインに開いているバッファ数を記載
    function! CountBuffers()
      let cnt = 0
      for nr in range(1, bufnr('$'))
        if buflisted(nr)
          let cnt += 1
        endif
      endfor
      return cnt
    endfunction
" End Function

" hide netrw header ( toggle I )
let g:netrw_banner=0

" netrwは常にtree view ( toggle i )
let g:netrw_liststyle = 3

" 'v'でファイルを開くときは右側に開く(default left)
let g:netrw_altv = 1

" 'o'でファイルを開くときは下側に開く(default upper)
let g:netrw_alto = 1

set clipboard=unnamed
set complete=.,w,b,u,k,i
set encoding=utf-8

runtime! rc/*.vim " ~/.vim/rc/*.vim 分割した各種.vimの読み込み
