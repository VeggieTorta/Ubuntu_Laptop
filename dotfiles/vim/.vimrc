" Author: VeggieTorta
" Last edited: 04.22.2018


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
    Plugin 'danro/rename.vim'               " Rename
    Plugin 'vimwiki/vimwiki'                " Vimwiki
    Plugin 'mhinz/vim-startify'             " Vim-Startify
    Plugin 'terryma/vim-multiple-cursors'   " Multiple cursors
    Plugin 'pseewald/vim-anyfold'           " Vim-anyfold

    call vundle#end()                       " required
    filetype plugin indent on               " required


"##############################
"Plugless Settings:
"##############################

    set shell=zsh                   " Change shell
    set number relativenumber       " Adds numbers to lines & make ralative
    set path+=**                    " Search into subfolders
    set wildmenu                    " Dislay all matching files when tab complete
    set showcmd                     " Display what is typed in right corner
    "set mouse=a                    " Enable to use of mouse
    set ignorecase                  " Ignore case sensitive
    set smartcase                   " Ignore case if search pattern is all lowercase
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


augroup TODOHighlight
    autocmd!
    autocmd BufEnter  *.todo,todo,ToDo,TODO  let b:syntax_was_on = exists("syntax_on")
    autocmd BufEnter  *.todo,todo,ToDo,TODO  syntax enable
    autocmd BufLeave  *.todo,todo,ToDo,TODO  if !getbufvar("%","syntax_was_on")
    autocmd BufLeave  *.todo,todo,ToDo,TODO      syntax off
    autocmd BufLeave  *.todo,todo,ToDo,TODO  endif
augroup END






"##############################
"Plug-In Settings:
"##############################

    set nocompatible
    filetype plugin on
    syntax on


"Startify:

    let g:startify_bookmarks = [
    \ '/home/vt/.vimrc',
    \ '/home/vt/Github/vimwiki/dev/index.md',
    \ '/home/vt/Github/vimwiki/school/index.md',
    \ ]

    let g:startify_custom_header = ['       F-O-C-U-S       ']

"Vimwiki:
    "<:h vimwiki>
    "Path and file format
    let g:vimwiki_list = [{'path': '~/Github/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]


"Vim-multicursor:
    let g:multi_cursor_use_default_mapping=0

    "Default mapping
    let g:multi_cursor_start_word_key      = '<C-n>'
    let g:multi_cursor_select_all_word_key = '<A-n>'
    let g:multi_cursor_start_key           = 'g<C-n>'
    let g:multi_cursor_select_all_key      = 'g<A-n>'
    let g:multi_cursor_next_key            = '<C-n>'
    let g:multi_cursor_prev_key            = '<C-p>'
    let g:multi_cursor_skip_key            = '<C-x>'
    let g:multi_cursor_quit_key            = '<Esc>'


"NerdTree:
    "closes NERDTree when a file is selected
    let NERDTreeQuitOnOpen=1

    "show hidden files (start with '.')
    let NERDTreeShowHidden=1

    "filter files out from being shown
    let NERDTreeIgnore = ['\.pyc$','\.DS_Store','\.localized','\.git']

    "Keyboard shortcut'
    map <C-t> :NERDTreeToggle<CR>


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
