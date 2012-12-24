
"---------------------------------------------------------------------------
" 以下、Koariya gvimrcからインポート
"---------------------------------------------------------------------------

" MacVim-KaoriYa固有の設定
"

set noimdisable

if has('kaoriya')

    let $SSH_ASKPASS = simplify($VIM . '/../../MacOS') . '/macvim-askpass'
    " set imdisableactivate

endif

" 文字コードの自動認識優先順位 : MacVim Kaoriyaだと使わないほうがいい？
" set fileencodings=utf-8,cp932,iso-2022-jp,euc-jp,default,latin,utf-16le

"---------------------------------------------------------------------------
" ウインドウに関する設定:
"
" ウインドウの幅
set columns=80
" ウインドウの高さ
set lines=50
" コマンドラインの高さ(GUI使用時)
set cmdheight=2

"---------------------------------------------------------------------------

"---------------------------------------------------------------------------
" フォント設定:
"
if has('win32')
  " Windows用
  set guifont=MS_Gothic:h12:cSHIFTJIS
  "set guifont=MS_Mincho:h12:cSHIFTJIS
  " 行間隔の設定
  set linespace=1
  " 一部のUCS文字の幅を自動計測して決める
  if has('kaoriya')
    set ambiwidth=auto
  endif
elseif has('gui_macvim')
  set guifont=Osaka-Mono:h14
elseif has('mac')
  set guifont=Osaka−等幅:h14
elseif has('xfontset')
  " UNIX用 (xfontsetを使用)
  set guifontset=a14,r14,k14
endif

"---------------------------------------------------------------------------

"---------------------------------------------------------------------------
" 日本語入力に関する設定:
"
if has('multi_byte_ime') || has('xim') || has('gui_macvim')
  " IME ON時のカーソルの色を設定(設定例:紫)
  highlight CursorIM guibg=Purple guifg=NONE
  " 挿入モード・検索モードでのデフォルトのIME状態設定
  set iminsert=0 imsearch=0
  if has('xim') && has('GUI_GTK')
    " XIMの入力開始キーを設定:
    " 下記の s-space はShift+Spaceの意味でkinput2+canna用設定
    "set imactivatekey=s-space
  endif
  " 挿入モードでのIME状態を記憶させない場合、次行のコメントを解除
  "inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
endif

"---------------------------------------------------------------------------

"---------------------------------------------------------------------------
" フォント設定:
"
if has('win32')
  " Windows用
  set guifont=MS_Gothic:h12:cSHIFTJIS
  "set guifont=MS_Mincho:h12:cSHIFTJIS
  " 行間隔の設定
  set linespace=1
  " 一部のUCS文字の幅を自動計測して決める
  if has('kaoriya')
    set ambiwidth=auto
  endif
elseif has('gui_macvim')
  set guifont=Osaka-Mono:h14
elseif has('mac')
  set guifont=Osaka−等幅:h14
elseif has('xfontset')
  " UNIX用 (xfontsetを使用)
  set guifontset=a14,r14,k14
endif

"---------------------------------------------------------------------------
" Koariya gvimrcからインポート - ここまで
"---------------------------------------------------------------------------


" GVimかどうかをチェックするには、has('gui_running')
" MacVim用設定
if has('gui_macvim')

    " カラースキーム
    colorscheme jellybeans

    " 透明度
    set transparency=18

    " GUI用フォント設定
    set guifont=Ricty Regular:h14

    " Macでの共通設定ファイルを開く
    nnoremap ,zr :tabnew ~/Dropbox/config/vimrc_common<CR>

    " Window Size はみだした部分は自動的に修正させて画面いっぱいに表示させる
    set lines=90 columns=200 

    set imdisableactivate

endif

