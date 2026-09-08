"
" ~/.vimrc
"

colorscheme retrobox

syntax on

set nowrap
set noswapfile " 不要生成swap文件
set bufhidden=hide " 当buffer被丢弃的时候隐藏它
"set number " 显示行号
set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set shiftwidth=2 " 设定 << 和 >> 命令移动时的宽度为 2
set softtabstop=2 " 使得按退格键时可以一次删掉 2 个空格
set tabstop=2 " 设定 tab 长度为 2
set nobackup " 覆盖文件时不备份
"set autochdir " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes " 设置备份时的行为为覆盖
set hlsearch " 搜索时高亮显示被找到的文本
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= " 置空错误铃声的终端代码
set matchtime=2 " 短暂跳转到匹配括号的时间
set magic " 设置魔术
"set smartindent " 开启新行时使用智能自动缩进
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ Ln\ %l,\ Col\ %c/%L%) " 设置在状态行显示的信息
set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
set foldlevel=1 " 设置折叠层数为 1
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>  "用空格键来开关折叠
set incsearch "实时高亮显示匹配的文本
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

set background=dark

" Show matching brackets when text indicator is over them
set showmatch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Turn on the Wild menu
set wildmenu

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set helplang=cn

call plug#begin('~/.vim/plugged')
 Plug 'scrooloose/nerdtree'
 Plug 'mhinz/vim-startify'
 Plug 'tpope/vim-fugitive'
 Plug 'lfv89/vim-interestingwords'
 " Plug 'valloric/youcompleteme'
 Plug 'tpope/vim-surround'
 Plug 'junegunn/fzf.vim'
 Plug 'airblade/vim-gitgutter'
 Plug 'sheerun/vim-polyglot'
 Plug 'junegunn/fzf'
 Plug 'vhda/verilog_systemverilog.vim'
 Plug 'yianwillis/vimcdoc'
 Plug 'preservim/tagbar'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set tags=./tags;,tags;

"普通模式使用块状光标，插入模式用竖线光标，替换模式用下划线光标
if exists('$TMUX') == 0 && &term =~ 'xterm'
  let &t_SI = "\e[6 q"   " Insert mode: beam
  let &t_EI = "\e[2 q"   " Normal mode: block
  let &t_SR = "\e[4 q"   " Replace mode: underline
endif
"
" set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
"

" =========== 快捷键绑定 ===========
nnoremap <leader>f :Files<CR>             " 文件模糊跳转
nnoremap <leader>b :Buffers<CR>           " 缓冲区切换
nnoremap <leader>l :Lines<CR>             " 当前文件内容模糊搜索
nnoremap <leader>t :BTags<CR>             " 当前文件标签（函数/变量）跳转
nnoremap <leader>T :Tags<CR>              " 全局符号模糊跳转

set mouse=a

au BufRead,BufNewFile *.mbt set filetype=moonbit

set grepprg=rg\ --vimgrep\ --smart-case
set grepformat=%f:%l:%c:%m

" 允许递归搜索子目录
set path+=**
" 把你工程常见头文件目录加进去（按你项目实际改）
"set path+=./include,./src,./npc/include,./nemu/include
" 可选：如果你头文件很散，直接把根目录递归加上（可能会慢一点）
set path+=./**

" codex-vim-jump: vscode-like jump/navigation with coc.nvim
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD <Plug>(coc-declaration)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <F12> <Plug>(coc-definition)
nmap <silent> <S-F12> <Plug>(coc-references)

inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
" inoremap < <><Left>

