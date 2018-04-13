" Author: VeggieTorta
" Last edited: 04.08.2018

" Plug-in Manager: Vundle

    set nocompatible                        " required
    filetype off                            " required
    set rtp+=~/.vim/bundle/Vundle.vim       " required
    call vundle#begin()                     " required

    Plugin 'VundleVim/Vundle.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'xolox/vim-notes'
    Plugin 'xolox/vim-misc'
    Plugin 'junegunn/fzf.vim'
    Plugin 'junegunn/fzf'

    call vundle#end()                       " required
    filetype plugin indent on               " required

" Plugless Settings:
"
    set number relativenumber     " Adds numbers to lines & make ralative
    set path+=**                  " Search into subfolders
    set wildmenu                  " Dislay all matching files when tab complete
    set showcmd                   " Display what is typed in right corner
    set mouse=a                   " Enable to use of mouse
    set ignorecase                " Ignore case sensitive
    set noswapfile                " Prevent swap file from being created
    set encoding=utf8             " utf = 8
    "set nowrap                   " No multiple lines for long lines
    "set term=ansi                 " Fix arrow down key inserting 'B'
    
    " Always show line numbers, but only in current window.
    set number
    :au WinEnter * :setlocal number
    :au WinLeave * :setlocal nonumber

    " Automatically resize vertical splits.
    :au WinEnter * :set winfixheight
    :au WinEnter * :wincmd =


" Keymap:
"
    nnoremap <c-s> :w!<CR>          " normal mode: save
    inoremap <c-s> <Esc>:w!<CR>l    " insert mode: escape to normal and save
    vnoremap <c-s> <Esc>:w!<CR>     " visual mode: escape to normal and save


    
" Startify:

    let g:startify_bookmarks = [
      \ '/home/vt/.vimrc',
      \ '/home/vt/Github/vimwiki/dev/index.md',
      \ '/home/vt/Github/vimwiki/school/index.md',
      \ ]

    let g:startify_custom_header = [
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


" Vimwiki <:h vimwiki> 
    "Path and file format
    let g:vimwiki_list = [{'path': '/home/vt/Github/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]


" FzF vim
    set rtp+=~/.fzf
    let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }


" Vim-Notes
    let g:notes_directories = ['/home/vt/Github/vimwiki/']
    let g:notes_suffix = '.md'


" NerdTree
    "closes NERDTree when a file is selected
    let NERDTreeQuitOnOpen=1

    "show hidden files (start with '.')
    let NERDTreeShowHidden=1

    "filter files out from being shown
    let NERDTreeIgnore = ['\.pyc$','\.DS_Store','\.localized','\.git']

    "Keyboard shortcut'
    map <C-n> :NERDTreeToggle<CR>


" Python Settings
    set tabstop=4
    set shiftwidth=4
    set expandtab
    set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
    set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
    \ [%l/%L\ (%p%%)
    filetype plugin indent on
    au FileType py set textwidth=79 " PEP-8 Friendly








