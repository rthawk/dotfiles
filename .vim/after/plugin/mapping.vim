noremap ,i =
nnoremap ,, '
nnoremap ,c :
nnoremap ,s :w<CR>
nnoremap ,w <C-W>
inoremap jj <ESC>

nnoremap ,nn <ESC>i<C-R>=strftime("%H:%M")<CR>
nnoremap ,nd <ESC>i<C-R>=strftime("* %Y-%m-%d (%a) %H:%M")<CR>
nnoremap ,nt <ESC>i<C-R>=strftime("%Y-%m-%d")<CR>

nnoremap ,h :nohlsearch<CR>
nnoremap <C-l> :nohlsearch<CR><C-l>
nnoremap <Leader>bd :bd!<CR>

nnoremap ,m :marks<CR>
nnoremap ,l :buffers<CR>
nnoremap ,r :reg<CR>
nnoremap ,L :tabs<CR>
nnoremap ,t :tabnew<CR>
nnoremap ,T :tabnew
nnoremap ,o :copen<CR>
nnoremap ,q :quit<CR>
nnoremap ,j <C-]>

nnoremap <C-S> :w<CR>

nnoremap ,z <C-Z>
nnoremap ,ec :tabnew ~/.vimrc<CR>

nmap ,yu 0f(yau
nmap <silent> ,uo yy:!urlopen<CR><CR>

nnoremap <C-]> g<C-]>

nnoremap <Space>o :b 
nnoremap <Space>n :bn<CR>
nnoremap <Space>p :bp<CR>
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

