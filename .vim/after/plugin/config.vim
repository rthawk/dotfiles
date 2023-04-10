if &t_Co > 256
  if exists("$WT_SESSION") || match(&term, 'tmux') > -1
    let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
    let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
  endif
  set termguicolors
endif

if &t_Co >= 256
  let base16colorspace=256
endif

if &t_Co > 2
  syntax enable
endif

try
  colorscheme habamax
catch
endtry

let s:status_format_base = '%=%a%m%r%h%w%q%y b:%n %l,%v %{&fileencoding}/%{&fileformat}'
let &statusline  = '%F %L lines' . s:status_format_base
let &rulerformat = '%30(' . s:status_format_base . '%)'

if (exists('g:loaded_fugitive') && g:loaded_fugitive == 1)
  set statusline+=\ %{fugitive#statusline()}
  let &rulerformat = '%50(' . s:status_format_base . ' %{fugitive#statusline()}' . '%)'
endif

if has('nvim')
  finish
endif

if has('packages')
  packadd matchit
endif

set ttymouse=sgr
set completeopt+=menuone,popup

