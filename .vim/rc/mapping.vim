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

ab #l ------------------------------------------
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

filetype plugin indent on
