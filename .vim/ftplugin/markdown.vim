
let g:markdown_minlines = 400
let g:markdown_fenced_languages = ['html', 'python', 'ruby', 'vim', 'sh']
setlocal suffixesadd+=.md,.txt,.html,.py,.rb,.vim,.sh

nnoremap <silent> ,eh :copy . <BAR> s;.;-;g <BAR> nohlsearch<CR>
vnoremap <silent> ,el :s/^\([^$]\)/- \1/ <BAR> silent let @/ = ""<CR>
