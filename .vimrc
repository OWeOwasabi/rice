" VUNDLE ----------------------------------------------------------------
" copied from https://github.com/VundleVim/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline' " kinda like powerline but lighter and just vim

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" MY CUSTOMIZATIONS -----------------------------------------------------
" from https://dougblack.io/words/a-good-vimrc.html
" colors
syntax enable " enable syntax processing
colorscheme base16-default-dark " set colorscheme
set termguicolors " set the colorscheme of the terminal the same as vim's scheme 
hi Normal guibg=NONE ctermbg=NONE " sets the background of the terminal transparent

" spaces & tabs
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number of spaces in tab when editing
set expandtab " tabs are spaces

" ui
set number " show line numbers
set showcmd " show last command in bottom bar
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when needed
set showmatch " highlight matching [{()}]

" searching
set incsearch " search as characters are entered
set hlsearch " highlight matches
" turn off search highlight
nnoremap <leader><space> :nowhlsearch<CR>

" folding
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent " fold based on indent level

