set nocompatible
syntax on

set go =           " No gui options
set noswapfile
set undofile
set undodir=~/.vim/_undodir
set undolevels=1000 "maximum number of changes that can be undone
set history=1000 " set maximun of history
set nobackup

source ~/.vim/bundles.vim

set backspace=indent,eol,start " configure the way backspace works
set shiftwidth=4
set tabstop=8
set softtabstop=4
set expandtab

set pastetoggle=<F5> "插入模式粘贴不会自动缩进避免混乱

set nu " show row number
set relativenumber " show relative row number
set nowrap " when a line has many words, don't wrap the line
set ai " autoindent of C/C++
set si " smartindent 
set cursorline " stand out the cursor line
set hlsearch
set showcmd " show command of normal mode at lower right corner
colorscheme wombat256grf

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8 

" 检测文件类型
filetype on
" 针对不同的文件采用不同的缩进方式
filetype indent on
" 允许插件
filetype plugin on
" 启动智能补全
filetype plugin indent on

" 定义快捷键的前缀，即<Leader>
let mapleader=" "
" 定义快捷键到行首和行尾
nmap ls 0
nmap lb ^
nmap le $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 去除搜索高亮
nnoremap <Leader>n :nohl<CR>
" 定义快捷键在结对符之间跳转，助记pair
nmap <Leader>pa %
" 按两次空格自动折叠
nnoremap <Leader><Leader> za

"记住上次的光标位置
augroup resCur
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

"python
au FileType python source ~/.vim/python.vim
"Haskell
au FileType haskell source ~/.vim/haskell.vim
"Markdown
au FileType markdown source ~/.vim/markdown.vim
