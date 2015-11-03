" remap 'jump to mark'
nnoremap ,, '

" 時間のみ挿入
nnoremap ,nn <ESC>i<C-R>=strftime("%H:%M ")<CR>
" 今日の日付と時間を挿入してinsertモードへ移行 ----
nnoremap ,nd <ESC>i<C-R>=strftime("* %Y-%m-%d (%a) %H:%M ")<CR>

" 検索ハイライト解除
nnoremap ,h :nohlsearch<CR>

" 選択しているバッファーを強制的に削除
nnoremap <Leader>bd :bd!<CR>

" マーク一覧を表示
nnoremap ,m :marks<CR>

" バッファ一覧を表示
" nnoremap ,l :buffers<CR>

" レジスタ一覧を表示
nnoremap ,r :reg<CR>

" タブ一覧を表示
nnoremap ,L :tabs<CR>

" 新規タブを開く
nnoremap ,t :tabnew<CR>
nnoremap ,T :tabnew

" Emacs save
nnoremap <C-X><C-S> :w<CR>
nnoremap <C-X><C-W> :w

" Emacs select
nnoremap <C-X><C-H> ggVG

nnoremap <C-X><C-N> :nohlsearch<CR>

" 分割したvimrcファイルを開く
nnoremap ,zr :tabnew ~/.vim/rc/<CR>

" tags jump
nnoremap <C-]> g<C-]>


" 入力補助
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

ab #l ------------------------------------------
" iabbrev #lg logger

" only command line mode
cabbrev E Explore
cabbrev S Sexplore
cabbrev V Vexplore


