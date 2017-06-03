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
nnoremap ,l :buffers<CR>
nnoremap ,r :reg<CR>
nnoremap ,L :tabs<CR>
nnoremap ,t :tabnew<CR>
nnoremap ,T :tabnew

nnoremap <C-S> :w<CR>

nnoremap ,z <C-Z>
nnoremap ,er :tabnew ~/.vim/rc/<CR>
nnoremap ,ec :tabnew ~/.vimrc<CR>

nnoremap <C-]> g<C-]>

nnoremap <Space>e :Explore.<CR>
nnoremap <Space>r :%s/
vnoremap <Space>r :s/

ab #l ------------------------------------------
ia ,e <ESC>
ia ,m <CR>

cabbrev E Explore
cabbrev S Sexplore
cabbrev V Vexplore
cabbrev ,e <ESC>
cabbrev ,m <CR>

