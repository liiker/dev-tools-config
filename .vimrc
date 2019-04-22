"first of all, install Vundle git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set number
"set autoindent
set shell=bash\ -l
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

"Eegin >>> 设置光标当前行高亮
set cursorline
"hi CursorLine   cterm=NONE ctermbg=lightred ctermfg=green guibg=darkred guifg=NONE
"hi CursorColumn cterm=NONE ctermbg=lightred ctermfg=green guibg=darkred guifg=NONE
"End <<<
syntax on

" 映射常用快捷键
map <C-J> <C-W>j<C-W><C-_>
map <C-K> <C-W>k<C-W><C-_>

" =================== start vundle ====================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ===================== 载入插件开始 ============================

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'taglist.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'drmingdrmer/xptemplate.git'
Plugin 'robhudson/snipmate_for_django'
Plugin 'mattn/emmet-vim'
Plugin 'git://git.wincent.com/command-t.git'

" ===================== 载入插件结束 ============================
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" =================== end vundle ====================

let g:xptemplate_vars="$author=liiker&$email=liiker@qq.com"

" Settings for tagslist
let Tlist_Use_Right_Window = 1 "让taglist窗口出现在Vim的右边
let Tlist_File_Fold_Auto_Close = 1 "当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。
let Tlist_Show_One_File = 1 "只显示一个文件中的tag，默认为显示多个
let Tlist_Sort_Type ='name' "Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序
let Tlist_GainFocus_On_ToggleOpen = 1 "Taglist窗口打开时，立刻切换为有焦点状态
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_WinWidth = 32 "设置窗体宽度为32，可以根据自己喜好设置
let Tlist_Ctags_Cmd ='/usr/local/Cellar/ctags/5.8/bin/ctags' "这里比较重要了，设置ctags的位置，不是指向MacOS自带的那个，而是我们用homebrew安装的那个
map t:TlistToggle "热键设置，我设置成Leader+t来呼出和关闭Taglist
set tags=tags;
set autochdir

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
