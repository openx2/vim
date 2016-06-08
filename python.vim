"支持PEP8风格的缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'
"出现多余的空白字符时标示出来
highlight BadWhitespace ctermbg=red guibg=darkred
match BadWhitespace /\s\+$/

" 开启折叠
set foldmethod=indent
set foldlevel=99
" 通常模式下按空格键折叠代码
nnoremap <space> za

let python_highlight_all=1
