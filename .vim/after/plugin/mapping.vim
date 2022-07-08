noremap ,i =
nnoremap ,, ,
nnoremap ,. '
nnoremap ,c :
nnoremap ,s :w<CR>
nnoremap ,w <C-W>
inoremap jj <ESC>

nnoremap ,nn <ESC>i<C-R>=strftime("%H:%M")<CR>
nnoremap ,nd <ESC>i<C-R>=strftime("* %Y-%m-%d (%a) %H:%M")<CR>
nnoremap ,nt <ESC>i<C-R>=strftime("%Y-%m-%d")<CR>

nnoremap <silent> <C-l> :nohlsearch<BAR>redraw<CR>
nnoremap <Leader>bd :bd!<CR>

nnoremap ,m :marks<CR>
nnoremap ,l :buffers<CR>:b 
nnoremap ,r :reg<CR>
nnoremap ,L :tabs<CR>
nnoremap ,t :tabnew<CR>
nnoremap ,T :tabnew
nnoremap ,o :copen<CR>
nnoremap ,q :quit<CR>
nnoremap ,Q :quit!<CR>
nnoremap ,j <C-]>
nnoremap ,J :jumps<CR>
nnoremap ,C :changes<CR>
nnoremap ,gj g<C-]>
nnoremap ,z <C-Z>
nnoremap ,N :syntax on<CR>
nnoremap ,F :syntax off<CR>
nnoremap ,f :find ./**/*

nmap ,yu 0f(lyi(
nmap ,yl 0yg_
nmap <silent> ,uo yy:!urlopen<CR><CR>

nnoremap <Space>o :ls<CR>:b 
nnoremap <Space>n :bn<CR>
nnoremap <Space>p :bp<CR>
nnoremap <Space>e :Explore.<CR>
nnoremap <Space>r :%s/
vnoremap <Space>r :s/

nnoremap ss s
nnoremap sj :e #<CR>

ab ,t ~
ab ,v \|
ab ,b \
ab ,p +
ia ,e <ESC>
ia ,m <CR>
ia ,q ```<CR>

cabbrev ,e <ESC>
cabbrev ,f <C-F>
cabbrev ,m <CR>

