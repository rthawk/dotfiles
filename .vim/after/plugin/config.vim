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

colorscheme molokai
let g:molokai_rtcustom = 1
syntax on

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


if exists('*SlimuxSendCode')
  map <Space>c  :SlimuxREPLSendLine<CR>
  vmap <Space>c :SlimuxREPLSendSelection<CR>
endif

if exists('did_plugin_ultisnips')
  let g:UltiSnipsExpandTrigger="<C-k>"
  let g:UltiSnipsJumpForwardTrigger="<c-b>"
  let g:UltiSnipsJumpBackwardTrigger="<c-z>"
endif

if exists("g:loaded_syntastic_plugin")
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0

  let g:syntastic_sh_shellcheck_args = "-e SC1071,SC1090,SC2148"
  let g:syntastic_zsh_shellcheck_args = g:syntastic_sh_shellcheck_args
endif

function! CountBuffers()
  let cnt = 0
  for nr in range(1, bufnr('$'))
    if buflisted(nr)
      let cnt += 1
    endif
  endfor
  return cnt
endfunction

