set showcmd

set notitle
set nocursorline
set nocursorcolumn
set hlsearch

set wildmenu
set wildmode=list:full
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*DS_Store*

set mouse=a
set guioptions-=T
set history=1000
syntax on
colorscheme molokai

set statusline=%F%m%r%h%w\ [POS=%04l,%04v][%p%%]\ %=[%{&fileencoding}]\ %{&fileformat}\ [LEN=%L]\ [%{CountBuffers()}\ buffers]

if (exists('g:loaded_fugitive') && g:loaded_fugitive == 1)
  set statusline+=\ %{fugitive#statusline()}
endif

" netrw
" hide header (toggle I)
let g:netrw_banner=0
" tree view (toggle i)
let g:netrw_liststyle = 3
" 'v' open right (default left)
let g:netrw_altv = 1
" 'o' open bottom (default upper)
let g:netrw_alto = 1

function! CountBuffers()
  let cnt = 0
  for nr in range(1, bufnr('$'))
    if buflisted(nr)
      let cnt += 1
    endif
  endfor
  return cnt
endfunction

