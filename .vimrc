if &compatible
  set nocompatible
endif

set ttyfast
set number
set relativenumber

set showmatch

set ignorecase
set smartcase

set autoread

set nobackup
set noswapfile
set noundofile
set backspace=indent,eol,start
set laststatus=2

set modeline
set modelines=5

set visualbell t_vb=
set background=dark

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set fileformats=unix,dos,mac

set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<

set complete=.,w,b,u,k,i
set encoding=utf-8

if has('path_extra')
    set tags+=tags;
endif

if has('unix')
  if has('unnamedplus')
    set clipboard^=unnamedplus
  endif
endif

if has('win32') || has('win64')

endif

if has('Mac')
  set clipboard=unnamed
  vmap <silent> sy :!pbcopy; pbpaste<CR>
  map <silent> sp <esc>o<esc>v:!pbpaste<CR>
endif

if has('packages')
  packadd! matchit
endif

set rtp+=~/.vim/experiment

if has("autocmd")
  filetype plugin indent on
endif

