" Author: hinil
" Repository: 
" Create Date: 2019-5-15
" License: MIT

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","     	    " 定义<leader>键
let g:mapleader = ","   	    " 定义<leader>键
set nocompatible        	    " 设置不兼容原始vi模式
filetype on             	    " 设置开启文件类型侦测
filetype plugin on      	    " 设置加载对应文件类型的插件 
set novisualbell                " 关闭错误的提示
set noerrorbells               
syntax enable           	    " 开启语法高亮功能
syntax on               	    " 自动语法高亮
set t_Co=256            	    " 开启256色支持
set cmdheight=2         	    " 设置命令行的高度
set showcmd             	    " select模式下显示选中的行数
set scrolloff=3                 " 设置光标移动到Buffer顶部和底部时保持三行的距离
set ruler               	    " 总是显示光标位置
set laststatus=2        	    " 总是显示状态栏
set number              	    " 开启行号显示
set cursorline          	    " 高亮显示当前行
set cursorcolumn        	    " 高亮显示当前列
set whichwrap+=<,>,h,l  	    " 设置光标键跨行
set ttimeoutlen=0       	    " 设置<ESC>键响应时间
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set history=1000                " 设置历史存储容量

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           	    " 设置自动缩进
set cindent              	    " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0     " 设置C/C++语言的具体缩进方式
set smartindent                 " 智能的选择对其方式
filetype indent on              " 自适应不同语言的智能缩进
filetype plugin indent on       " 启动自动补全
set expandtab                   " 将制表符扩展为空格
set tabstop=4                   " 设置编辑时制表符占用空格数
set shiftwidth=4                " 设置格式化时制表符占用空格数
set softtabstop=4               " 设置4个空格为制表符
set smarttab                    " 在行和段开始处使用制表符
set nowrap                      " 禁止折行
set backspace=indent,eol,start  " 使用回车键正常处理indent,eol,start等
set sidescroll=10               " 设置向右滚动字符数
set nofoldenable                " 禁用折叠代码
set mouse=a     	            "启动对鼠标的支持
"set mouse-=a   	            " 鼠标暂不启用, 键盘党....
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu                    " vim自身命名行模式智能补全
set completeopt-=preview        " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch                    " 高亮显示搜索结果
set incsearch                   " 开启实时搜索功能
set ignorecase                  " 搜索时大小写不敏感
set showmatch                   " 高亮显示匹配的括号

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup                    " 设置不备份
set noswapfile                  " 禁止生成临时文件
set autoread                    " 文件在vim之外修改过，自动重新读入
set autowrite                   " 设置自动保存
set confirm                     " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8               						 "转化为当前系统编码(utf-8)来显示   
set fileencoding=utf-8                                   "设置当前文件的编码为utf-8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030  "打开文件时进行解码的猜测列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件列表
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
"---------------------------------------------------------------------------------------
Plug 'Yggdroot/LeaderF'             	"文件搜索，比ctrlp更强大的文件的模糊搜索工具
Plug 'easymotion/vim-easymotion'    	"强大的光标快速移动工具，强大到颠覆你的插件观
Plug 'scrooloose/nerdtree'          	"目录树
Plug 'vim-airline/vim-airline'          "状态栏增强
Plug 'vim-airline/vim-airline-themes'   "状态栏增强
Plug 'chxuan/prepare-code'              "新建文件时，生成预定义代码片段
Plug 'haya14busa/incsearch.vim'         "模糊字符搜索插件
"---------------------------------------------------------------------------------------
call plug#end()            

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/setting/incsearch.vim
source ~/.vim/setting/LeaderF.vim
source ~/.vim/setting/nerdtree.vim
source ~/.vim/setting/prepare-code.vim
source ~/.vim/setting/vim-airline.vim
source ~/.vim/setting/vim-easymotion.vim

" 安装、更新、删除插件
nnoremap <leader><leader>s :PlugStatus<cr>
nnoremap <leader><leader>i :PlugInstall<cr>
nnoremap <leader><leader>u :PlugUpdate<cr>
nnoremap <leader><leader>c :PlugClean<cr>

" 分屏窗口移动
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" 主题
set background=dark
let g:onedark_termcolors=256
colorscheme molokai
