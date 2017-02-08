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
set nocompatible " be iMproved
filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" 映射常用快捷键
map <C-J> <C-W>j<C-W><C-_>
map <C-K> <C-W>k<C-W><C-_>
"
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" My Bundles here:
"
" original repos on github
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'taglist.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'drmingdrmer/xptemplate.git'
Bundle 'robhudson/snipmate_for_django'
Bundle 'mattn/emmet-vim'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...
"snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
" Optional:
Bundle "honza/vim-snippets"

filetype plugin indent on " required!
"
" Brief help  -- 此处后面都是vundle的使用命令
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
"

au FileType python set ft=python.django
au FileType html set ft=htmldjango.html
" autocmd FileType python set omnifunc=pythoncomplete " #Complete
" autocmd FileType javascript set omnifunc=javascriptcomplete " #CompleteJS
" autocmd FileType html set omnifunc=htmlcomplete " #CompleteTags
" autocmd FileType css set omnifunc=csscomplete " #CompleteCSS

let g:xptemplate_vars="$author=liiker&$email=liiker@qq.com"


colorscheme github


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
