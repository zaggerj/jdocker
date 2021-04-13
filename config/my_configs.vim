"取消 ctrl f 的映射
" Ctrl + D and Ctrl + U for a half scroll
" 不过 ctrl f 用于跳转文件我觉得挺合适的，就不取消 map 了
" nunmap <c-f>
" nunmap <c-b>
"---------基础偏好设置-------------
"<leader> default measn key '\'
"let mapleader=" "
"let mapleader=','
syntax on            " 开启语法高亮
set term=screen-256color
set nocompatible     " 去掉vi的一致性
set laststatus=2     " 命令行为2行
set nu               " 设置显示行号
set mouse=a          " 启用鼠标
set relativenumber   " 设置相对行号
set hlsearch         " 高亮搜索结果
set ignorecase       " 搜索时忽略大小写
set cursorline       " 突出显示当前行：在当前行下显示横线，方便确认位置
"set cursorcolumn     " 突出显示当前列
set encoding=utf-8   " 使用 utf-8 编码
set showmatch        " 显示匹配的括号
set smartcase        " 输入有大写的英文字母时，变成大小写敏感
set incsearch        " 搜索时自动匹配候选对象
"set background=dark  " 设置背景颜色
" ------python pep8 indent----------------
au BufNewFile,BufRead *.py
\ set textwidth=79  " lines longer than 79 columns will be broken
\ set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
\ set tabstop=4     " a hard TAB displays as 4 columns
\ set expandtab     " insert spaces when hitting TABs
\ set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
\ set shiftround    " round indent to multiple of 'shiftwidth'
\ set autoindent    " align the new line indent with the previous line

"end of set python

au BufNewFile,BufRead *.js,*.html,*.css,*.vue
\ set tabstop=2 |
\ set softtabstop=2 |
\ set shiftwidth=2

" ------------保存文件后依然能undo-----注意你首先需要创建一个文件夹 $HOME/.vim/undo-----
if has('persistent_undo')      "check if your vim version supports it
	set undofile                 "turn on the feature
	set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif

" --------------记住上一次修改位置----------
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" ----------------leader 设置 -----------------
" nnoremap <leader>d dd

" --------------缩进对齐 ----Yggdroot/indentLine --------
let g:indentLine_char='┆'        "缩进指示线，这个对于python很有用
let g:indentLine_enabled = 1     "启用缩进指示线
