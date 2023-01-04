if has('packages')
  packadd matchit
endif

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
  colorscheme base16-horizon-terminal-dark
  syntax enable
endif

let s:status_format_base = '%=%a%m%r%h%w%q%y b:%n %l,%v %{&fileencoding}/%{&fileformat}'
let &statusline  = '%F %L lines' . s:status_format_base
let &rulerformat = '%30(' . s:status_format_base . '%)'

if (exists('g:loaded_fugitive') && g:loaded_fugitive == 1)
  set statusline+=\ %{fugitive#statusline()}
  let &rulerformat = '%50(' . s:status_format_base . ' %{fugitive#statusline()}' . '%)'
endif

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

