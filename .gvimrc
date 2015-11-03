set noimdisable

set columns=80
set lines=50
set cmdheight=2

set transparency=10
if has('win32')
  set guifont=MS_Gothic:h12:cSHIFTJIS
  set linespace=1
  if has('kaoriya')
    set ambiwidth=auto
  endif
endif

if has('multi_byte_ime') || has('xim') || has('gui_macvim')
  " IME ON時のカーソルの色を設定(設定例:紫)
  highlight CursorIM guibg=Purple guifg=NONE
  set iminsert=0 imsearch=0
endif

