" Author: VeggieTorta
" Last edited: 04.17.2018
"###########################
"Plug-in Manager: Vundle
"###########################
"
    ":PluginInstall
    ":PluginUpdate
    ":source ~/.vimrc
"
    set nocompatible                        " required
    filetype off                            " required
    set rtp+=~/.vim/bundle/Vundle.vim       " required
    call vundle#begin()                     " required
"
    Plugin 'VundleVim/Vundle.vim'           " Vundle manages itself
    Plugin 'scrooloose/nerdtree'            " Nerdtree
    Plugin 'danro/rename.vim'               " Rename
    Plugin 'vimwiki/vimwiki'                " Vimwiki
    Plugin 'mhinz/vim-startify'             " Vim-Startify
    Plugin 'terryma/vim-multiple-cursors'   " Multiple cursors
    Plugin 'pseewald/vim-anyfold'           " Vim-anyfold
"
    call vundle#end()                       " required
    filetype plugin indent on               " required
"
"
"##############################
"Plugless Settings:
"##############################
"
"
    set number relativenumber     " Adds numbers to lines & make ralative
    set path+=**                  " Search into subfolders
    set wildmenu                  " Dislay all matching files when tab complete
    set showcmd                   " Display what is typed in right corner
    "set mouse=a                  " Enable to use of mouse
    set ignorecase                " Ignore case sensitive
    set noswapfile                " Prevent swap file from being created
    set encoding=utf8             " utf = 8
    "set nowrap                   " No multiple lines for long lines
    "set term=ansi                " Fix arrow down key inserting 'B'
    set foldlevel=0               " Enable folding
"
"
    " Always show line numbers, but only in current window.
    set number
    :au WinEnter * :setlocal number
    :au WinLeave * :setlocal nonumber
"
    " Automatically resize vertical splits.
    :au WinEnter * :set winfixheight
    :au WinEnter * :wincmd =
"
"
"##############################
"Plug-In Settings:
"##############################
"
    set nocompatible
    filetype plugin on
    syntax on
"
"
"Startify:
"
    let g:startify_bookmarks = [
    \ '/home/vt/.vimrc',
    \ '/home/vt/Github/vimwiki/dev/index.md',
    \ '/home/vt/Github/vimwiki/school/index.md',
    \ ]
"
    let g:startify_custom_header = ['       F-O-C-U-S       ']
    "let g:startify_custom_header = [
    \' ',
    \'       .                                                      .                              ',
    \'              .n                   .                 .                  n.                   ',
    \'      .   .dP                  dP                   9b                 9b.    .              ',
    \'      4    qXb         .       dX                     Xb       .        dXp     t            ',
    \'      dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb          ',
    \'      9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP          ',
    \'      9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP            ',
    \'      `9XXXXXXXXXXXXXXXXXXXXX`~   ~`OOO8b   d8OOO`~   ~`XXXXXXXXXXXXXXXXXXXXXP`              ',
    \'          `9XXXXXXXXXXXP` `9XX`   XXX    `98v8P`  XXXXX   `XXP` `9XXXXXXXXXXXP`              ',
    \'              ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~                  ',
    \'                              )b.  .dbo.dP``v``9b.odb.  .dX(                                 ',
    \'                          ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.                                  ',
    \'                          dXXXXXXXXXXXP`   .   `9XXXXXXXXXXXb                                ',
    \'                          dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb                              ',
    \'                          9XXb`   `XXXXXb.dX|Xb.dXXXXX`   `dXXP                              ',
    \'                          ``      9XXXXXX(   )XXXXXXP      `r`                               ',
    \'                                  XXXXXX X.`v`.X XXXX                                        ',
    \'                                   XP^X``b   d``X^XX                                         ',
    \'                                   X. 9  `   `  P )X                                         ',
    \'                                   `b  `       `  d`                                         ',
    \'                                   `             `                                           ',
    \' ', ]
"
"
"Vimwiki:
    "<:h vimwiki>
    "Path and file format
    let g:vimwiki_list = [{'path': '~/Github/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
"
"
"Vim-multicursor:
    let g:multi_cursor_use_default_mapping=0
"
    "Default mapping
    let g:multi_cursor_start_word_key      = '<C-n>'
    let g:multi_cursor_select_all_word_key = '<A-n>'
    let g:multi_cursor_start_key           = 'g<C-n>'
    let g:multi_cursor_select_all_key      = 'g<A-n>'
    let g:multi_cursor_next_key            = '<C-n>'
    let g:multi_cursor_prev_key            = '<C-p>'
    let g:multi_cursor_skip_key            = '<C-x>'
    let g:multi_cursor_quit_key            = '<Esc>'
"
"
"NerdTree:
    "closes NERDTree when a file is selected
    let NERDTreeQuitOnOpen=1
"
    "show hidden files (start with '.')
    let NERDTreeShowHidden=1
"
    "filter files out from being shown
    let NERDTreeIgnore = ['\.pyc$','\.DS_Store','\.localized','\.git']
"
    "Keyboard shortcut'
    map <C-t> :NERDTreeToggle<CR>
"
"
"#############################
"Python Settings:
"#############################
"
    set tabstop=4
    set shiftwidth=4
    set expandtab
    set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
    set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
    \ [%l/%L\ (%p%%)
    filetype plugin indent on
    au FileType py set textwidth=79 " PEP-8 Friendly
