
" Last edited: 05.22.2018

"           __   _(_)_ __ ___  _ __ ___ 
"           \ \ / / | '_ ` _ \| '__/ __|
"            \ V /| | | | | | | | | (__ 
"           (_)_/ |_|_| |_| |_|_|  \___|


"###########################
"Plug-in Manager: Vundle
"###########################

    ":PluginInstall
    ":PluginUpdate
    ":source ~/.vimrc

    set nocompatible                        " required
    filetype off                            " required
    set rtp+=~/.vim/bundle/Vundle.vim       " required
    call vundle#begin()                     " required

    Plugin 'VundleVim/Vundle.vim'           " Vundle manages itself
    Plugin 'scrooloose/nerdtree'            " Nerdtree
    Plugin 'vimwiki/vimwiki'                " Vimwiki
    Plugin 'mhinz/vim-startify'             " Vim-Startify

    Plugin 'vim-airline/vim-airline'        " Airline
    Plugin 'vim-airline/vim-airline-themes' " Airline Themes
    Plugin 'scrooloose/nerdcommenter'       " Nerdcommenter
    Plugin 'kassio/neoterm'                 " Neoterm
    Plugin 'mklabs/split-term.vim'          " Split-term
    Plugin 'junegunn/fzf.vim'               " fzf
    Plugin 'ctrlpvim/ctrlp.vim'             " Ctrl-P

    call vundle#end()                       " required
    filetype plugin indent on               " required


"##############################
"Plugless Settings:
"##############################

    set shell=bash                  " Set basch as shell, it used to be ZSh
    set number relativenumber       " Adds numbers to lines & make ralative
    set path+=**                    " Search into subfolders
    set wildmenu                    " Dislay all matching files when tab complete
    set showcmd                     " Display what is typed in right corner
    "set mouse=a                    " Enable to use of mouse
    set incsearch                   " show search matches as you type
    set noswapfile                  " Prevent swap file from being created
    set encoding=utf8               " Standard encoding and en_US as the standrd language
    set formatoptions+=1            " When wrapping don't end lines with 1-letter words
    "set nowrap                     " No multiple lines for long lines
    "set term=ansi                  " Fix arrow down key inserting 'B'
    set foldlevel=0                 " Enable folding
    set hlsearch                    " Highlight all matches
    set title                       " Show filename in titlebar of window
    set autowrite                   " Save buffer automatically when changing files
    set background=dark
    syntax enable                   " Enable syntax highlighting
    set nobackup                    " Do not keep back up files
    set nowb
    set noswapfile                  " no swap file
    set laststatus=2                " Always show the status line
    set showmode                    " Always show what mode we're currently editing in.
    set clipboard=unnamed           " Normal OS Clipboard interaction

    let mapleader= ","              " Reassign leader

    "Swapped ; and : to increase speed, no need to use shift.
    nnoremap ; :
    nnoremap : ;

    "Remap j and k to act as expected when used on long wrapped lines.
    nnoremap j gj
    nnoremap k gk

    "Always show line numbers, but only in current window.
    set number
    :au WinEnter * :setlocal number
    :au WinLeave * :setlocal nonumber

    "Automatically resize vertical splits.
    :au WinEnter * :set winfixheight
    :au WinEnter * :wincmd =


"Snippets
"####################################################

" SOAP NOTE Template
    nnoremap zsoap :-1read $HOME/Github/Ubuntu_Macbook_Air/dotfiles/vim/zsoap.txt<CR>3jwf>a


"Damian Conway's Die Blinkënmatchen: highlight matches
"#####################################################

nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
nnoremap <silent> n n:call HLNext(0.1)<cr>
nnoremap <silent> N N:call HLNext(0.1)<cr>

function! HLNext (blinktime)
    let target_pat = '\c\%#'.@/
    let blinks = 20
    let ring = matchadd('ErrorMsg', target_pat, 101)
    redraw
    exec 'sleep ' . float2nr(a:blinktime * 10000) . 'm'
    call matchdelete(ring)
    redraw
endfunction

"Clear previous highlighting (if any)...
function! HLNextOff ()
    if (exists('w:HLNext_matchnum') && w:HLNext_matchnum > 0)
        call matchdelete(w:HLNext_matchnum)
        unlet! w:HLNext_matchnum
    endif
endfunction


"##############################
"Plug-In Settings:
"##############################


    set nocompatible
    filetype plugin on
    syntax on


"Ctrl-P:
    ":help-ctrlp-options

    " Default mapping:
    let g:ctrl_map = '<c-p>'
    let g:ctrl_cmd = 'CtrlP'

    " Search Directory:
    " DEFAULT: let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_working_path_mode = '~/Dropbox/Vimwiki/'


"Startify:

    " Number of files to list:
    let g:startify_file_number = 5


    " List order:
    let g:startify_lists = [
                \ { 'type': 'bookmarks', 'header': [   'Bookmarks:']      },
                \ { 'type': 'files', 'header': [   'Remember Me:']       },
                \ ]

    " Bookmarks:
    let g:startify_bookmarks = [
    \ '~/.vimrc',
    \ '~/Dropbox/vimwiki/dev/index.md',
    \ '~/Dropbox/vimwiki/me/index.md',
    \ '~/Dropbox/vimwiki/school/index.md',
    \ '~/Dropbox/vimwiki/school/Anatomy1/index.md',
    \ '~/Dropbox/vimwiki/home/index.md',
    \ ]

    " Custome Header:
    let g:startify_custom_header = ['       F-O-C-U-S       ']


"Vimwiki:
    "<:h vimwiki>
    "Path and file format
    let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]


"NerdTree:
    "closes NERDTree when a file is selected
    let NERDTreeQuitOnOpen=1

    "show hidden files (start with '.')
    let NERDTreeShowHidden=1

    "filter files out from being shown
    let NERDTreeIgnore = ['\.pyc$','\.DS_Store','\.localized','\.git']

    "Keyboard shortcut'
    map <C-t> :NERDTreeToggle<CR>


"Vim-Airline:
    let g:airline_theme='deus'
    "let g:airline_theme='sol'


"Nerdcommenter
   "Comment current line while in Visual mode.
    "<leader>cci        comment
    "<leader>c<space>   uncomment

    "Add space after comment:
    let g:NERDspaceDelims = 1




"#############################
"Python Settings:
"#############################

    set tabstop=4           "A tab is four spaces
    set softtabstop=4       "Tab remove is four spaces
    set shiftwidth=4        "Autoindenting is four space
    set copyindent          " copy the previous indentation on autoindentimg
    set expandtab
    set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
    set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
    \ [%l/%L\ (%p%%)
    filetype plugin indent on
    au FileType py set textwidth=79 " PEP-8 Friendly
