""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 主题配色
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme torte
"colorscheme murphy
"colorscheme desert 
"colorscheme elflord
"colorscheme ron
colorscheme jack
"colorscheme bensday
"colorscheme asmanian2 
"colorscheme anotherdark
"colorscheme symfony



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 字符集设置  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"set termencoding=utf-8
"set encoding=utf-8
"set fileencodings=ucs-bom,utf-8,cp936
"set fileencoding=utf-8




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>
" 映射全选+复制 ctrl+a
map <C-A> ggVG
map! <C-A> <Esc>ggVGY
map <F12> gg=G
" 选中状态下 Ctrl+c 复制
map <C-c> +y
"nnoremap <C-c> "+y
"去空行  
nnoremap <F2> :g/^\s*$/d<CR> 
"F4打开关闭ctag目录树  
"map <F4> :TlistToggle<CR> 
"map <F4> :TagbarToggle<CR> 
map <F4> :call OpenWorkSpace()<CR> 
func! OpenWorkSpace()
	exec "TagbarToggle"
	exec "NERDTreeToggle"
endfunc
"比较文件  
nnoremap <C-F2> :vert diffsplit 
"新建标签  
map <M-F2> :tabnew<CR>  
"列出当前目录文件  
map <F3> :tabnew .<CR>  
"打开树状文件目录  
map <C-F3> \be  

"Ctrl+s键----关闭当前页
map <C-w> :call CloseTab()<CR>
func! CloseTab()
	exec "TagbarClose"
	exec "NERDTreeClose"
	exec "q!"
endfunc

"F9键----新建一个tab标签页
map <F9> :call SaveInputData()<CR>
map <C-t> :call SaveInputData()<CR>
func! SaveInputData()
	exec "tabnew"
	exec 'normal "+gP'
	exec "TagbarOpen"
	exec "NERDTree"
	"exec "w! /tmp/input_data"
endfunc


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""实用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
"winpos 5 5          " 设定窗口位置  
"set lines=40 columns=155    " 设定窗口大小  
set go=             " 不要图形按钮  
"color asmanian2     " 设置背景主题  
"set guifont=Courier_New:h10:cANSI   " 设置字体  
autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
autocmd InsertEnter * se cul    " 用浅色高亮当前行  
"set ruler           " 显示标尺  
set showcmd         " 输入的命令显示出来，看的清楚些  
"set cmdheight=1     " 命令行（在状态行下）的高度，设置为1  
"set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)  
"set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
set novisualbell    " 不要闪烁(不明白)  
set laststatus=1    " 启动显示状态行(1),总是显示状态行(2)  
set foldmethod=marker " 手动折叠  
"set background=dark "背景使用黑色 
"显示中文帮助
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif

"修改leader键为逗号
let mapleader=","
imap jj <esc>

"使用tab键来代替%进行匹配跳转
nmap <tab> %
vmap <tab> %

"折叠html标签 ,fold tag
nnoremap <leader>ft vatzf
"使用,v来选择刚刚复制的段落，这样可以用来缩进
nnoremap <leader>v v`]

"取消粘贴缩进
nmap <leader>p :set paste<CR>
nmap <leader>pp :set nopaste<CR>

"字体 
"if (has("gui_running")) 
"   set guifont=Bitstream\ Vera\ Sans\ Mono\ 10 
"endif 


"quickfix模式
autocmd FileType c,cpp,php,java,python map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全 
set completeopt=preview,menu 
"共享剪贴板  
set clipboard+=unnamed 
"从不备份  
set nobackup
"禁止生成临时文件
set noswapfile
"make 运行
:set makeprg=g++\ -Wall\ \ %
"设置当文件被改动时自动载入
set autoread
"自动保存
set autowrite
"60秒后自动保存
let autosave=60

"自动载入配置文件不需要重启
autocmd! bufwritepost _vimrc source %

"打开状态栏标尺
set ruler
"突出显示当前行
set cursorline
"突出显示当前列
"set cursorcolumn
"设置魔术
set magic
"隐藏工具栏
set guioptions-=T
"隐藏菜单栏
set guioptions-=m
"我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
"设置在状态行显示的信息
"set foldcolumn=0
"set foldmethod=indent 
"set foldlevel=3 
"set foldenable              " 开始折叠
"不要使用vi的键盘模式，而是vim自己的
set nocompatible
"语法高亮
set syntax=on
"去掉输入错误的提示声音
set noeb
"在处理未保存或只读文件的时候，弹出确认
set confirm
"自动缩进
set autoindent
set cindent
"Tab键的宽度
set tabstop=4
"统一缩进为4
set softtabstop=4
set shiftwidth=4
"不要用空格代替制表符
set noexpandtab
"在行和段开始处使用制表符
set smarttab
"显示行号
set number
"历史记录数
set history=1000
"搜索忽略大小写
set ignorecase
set smartcase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
"编码设置
set enc=utf-8
"字符集设置
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set langmenu=zh_CN.UTF-8
"语言设置
set helplang=cn
"总是显示状态行
set laststatus=2
"命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
"侦测文件类型
filetype on
"载入文件类型插件
filetype plugin on
"为特定文件类型载入相关缩进文件
filetype indent on
"保存全局变量
set viminfo+=!
"带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
"字符间插入的像素行数目
set linespace=0
"增强模式中的命令行自动完成操作
set wildmenu
"使回格键（backspace）正常处理indent, eol, start等
set backspace=2
"允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
"可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
if has('mouse')
  set mouse=a
endif
set selection=exclusive
set selectmode=mouse,key
"通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
"在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
"高亮显示匹配的括号
set showmatch
"匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
"光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
"为C程序提供自动缩进
set smartindent
"高亮显示普通txt文件（需要txt.vim脚本）
"u BufRead,BufNewFile *  setfiletype txt
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新文件注释头信息
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java,*.php exec ":call SetFileTitle()" 
""定义函数SetFileTitle，自动插入文件头 
func! SetFileTitle() 
	filetype on
	"如果文件类型为.sh文件 
	if &filetype == 'sh' 
		call setline(1,"\#########################################################################") 
		call append(line("."), "\# File Name: ".expand("%")) 
		call append(line(".")+1, "\# Author: qiqing <qiqing@leju.com>") 
		call append(line(".")+2, "\# mail: cqq254@163.com") 
		call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
		call append(line(".")+4, "\#########################################################################") 
		call append(line(".")+5, "\#!/bin/bash") 
		call append(line(".")+6, "") 
	elseif &filetype == 'cpp'
		call setline(1, "")
		call append(line(".")+1, "/*************************************************************************") 
		call append(line(".")+2, "#include<iostream>")
		call append(line(".")+3, "using namespace std;")
		call append(line(".")+4, "	 Author: qiqing <qiqing@leju.com>") 
		call append(line(".")+5, "	 Created Date: ".strftime("%c"))
		call append(line(".")+6, "")
	elseif &filetype == 'php'
		call setline(1, "\<\?php")
		call append(line("."), "/*************************************************************************") 
		call append(line(".")+1, "	 File Name: ".expand("%")) 
		call append(line(".")+2, "	 Version: 1.0") 
		call append(line(".")+3, "	 Author: qiqing <qiqing@leju.com>") 
		call append(line(".")+4, "	 Created Date: ".strftime("%c")) 
		call append(line(".")+5, " ************************************************************************/") 
		call append(line(".")+6, "")
		call append(line(".")+7, "?>")
	elseif &filetype == 'c'
		call setline(1, "")
		call append(line("."), "/*************************************************************************") 
		call append(line(".")+1, "	 File Name: ".expand("%")) 
		call append(line(".")+2, "	 Author: qiqing <qiqing@leju.com>") 
		call append(line(".")+3, "	 Created Date: ".strftime("%c"))
		call append(line(".")+4, "   #include<stdio.h>")
		call append(line(".")+5, "********************************************************************/")
	elseif &filetype == 'java'
		call setline(1, "/*************************************************************************") 
		call append(line(".")+2,"public class ".expand("%"))
		call append(line(".")+3,"")
	else 
		call setline(1, "/*************************************************************************") 
		call append(line("."), "	 File Name: ".expand("%")) 
		call append(line(".")+1, "	 Author: qiqing <qiqing@leju.com>") 
		call append(line(".")+2, "	 Created Date: ".strftime("%c"))
		call append(line(".")+3, " ************************************************************************/") 
		call append(line(".")+4, "")
	endif
	"新建文件后，自动定位到文件末尾
	autocmd BufNewFile * normal G
endfunc 





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" winManager 设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置界面分割
"let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWindowLayout = "FileExplorer,BufExplorer"
"设置winmanager的宽度，默认为25
let g:winManagerWidth = 30
let g:AutoOpenWinManager = 1  
"定义打开关闭winmanager按键
nmap <silent> <F10> :WMToggle<cr>
let tlist_txt_settings = 'txt;c:content;f:figures;t:tables'
au BufRead,BufNewFile *.txt setlocal ft=txt''



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TagList插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"以下是一些taglist设置" 
"不同时显示多个文件的tag，只显示当前文件的"
let Tlist_Show_One_File = 1 
"如果taglist窗口是最后一个窗口，则退出vim"
let Tlist_Exit_OnlyWindow = 1 
"在右侧窗口中显示taglist窗口"
let Tlist_Use_Right_Window = 1 
"设置按照名称排序，这样或许找函数名会容易些"
let Tlist_Sort_Type="name" 
"vim启动时自动打开taglist窗口" 
"Tlist_Auto_Open=1 
"打开taglist时焦点自动转到taglist窗口"
"Tlist_GainFocus_On_ToggleOpen=1 
"让taglist始终解释文件中的tag，不管taglist窗口有没有打开"
"Tlist_Process_File_Always=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD_tree(树状目录)插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置快捷键"
nmap <F6> :exec 'NERDTreeToggle'<cr>
"禁用所有与NERD_tree有关的命令"
"let loaded_nerd_tree=1 
"不显示指定的类型的文件"
"let NERDTreeIgnore=['/.vim$', '/~$'] 
"不显示隐藏文件(好像只在linux环境中有效)"
let NERDTreeShowHidden=0 
"排序"
let NERDTreeSortOrder=['//$','/.cpp$','/.c$', '/.h$', '/.py$', '/.lua$', '*'] 
"不分大小写排序"
let NERDTreeCaseSensitiveSort=0 
"设置窗口尺寸"
let NERDTreeWinSize=30
"是否显示行号"
let NERDTreeShowLineNumbers=1
"是否显示书签"
let NERDTreeShowBookmarks=1 
"打开文件后, 关闭NERDTrre窗口"
"let NERDTreeQuitOnOpen=1
"高亮NERDTrre窗口的当前行"
let NERDTreeHighlightCursorline=1

let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeBookmarksFile=$VIM.'\Data\NerdBookmarks.txt'
let NERDTreeMouseMode=2
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeWinPos='left'
nnoremap f :NERDTreeToggle
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>  
let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1  
set dictionary-=~/.vim/funclist.txt dictionary+=~/.vim/funclist.txt
set complete-=k complete +=k




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabbar(代码变量函数片段) 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>tb :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_phpctags_bin='/bin/phpctags'
let g:tagbar_phpctags_memory_limit = '512M'
let g:tagbar_width=30
"autocmd BufReadPost *.php,*.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent-Guides(代码可视化缩进) 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup=0
let g:indent_guides_auto_colors=0
let g:indent_guides_guide_size=1 
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd guibg=black ctermbg=3
hi IndentGuidesEven guibg=darkgrey ctermbg=4



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle(插件管理)插件设置 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible               " be iMproved
"filetype off                   " required!
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
 
" My Bundles here:
"
Bundle 'SuperTab'
"Bundle 'project.vim'
Bundle 'bufexplorer.zip'
Bundle 'taglist.vim'
Bundle 'Tagbar'
Bundle 'nerdtree-ack'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'perdirvimrc--Autoload-vimrc-files-per-di'
Bundle 'Color-Scheme-Explorer'
Bundle 'calendar.vim'
Bundle 'Indent-Guides'
Bundle 'Yggdroot/indentLine'
"Bundle 'php_check_syntax.vim'
Bundle 'HTML-AutoCloseTag'
"Bundle 'CSApprox'

" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...
 
filetype plugin indent on     " required!
"
" Brief help  -- 此处后面都是vundle的使用命令
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


