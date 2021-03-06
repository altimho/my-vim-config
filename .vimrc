execute pathogen#infect()

source ~/.vim/config/amix_vimrc/vimrcs/basic.vim

let g:dracula_italic = 0
colorscheme dracula
highlight Normal ctermbg=None

set number	" Show line numbers
set nowrap	" Wrap lines
set showbreak=+++	" Wrap-broken line prefix
set textwidth=120	" Line wrap (number of cols)
 
set autoindent	" Auto-indent new lines
set expandtab	" Use spaces instead of tabs
set shiftwidth=2	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
 
set undolevels=1000	" Number of undo levels

if !isdirectory("/tmp/vim/undo")
    call mkdir("/tmp/vim/undo", "p")
endif
set undodir=/tmp/vim/undo
set undofile

if !isdirectory("/tmp/vim/netrw")
    call mkdir("/tmp/vim/netrw", "p")
endif
let g:netrw_home = "/tmp/vim/netrw"
let g:netrw_banner = 0
let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
let g:netrw_winsize = 16
let g:netrw_preview = 1
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

filetype plugin on
set omnifunc=syntaxcomplete#Complete

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

let g:airline_powerline_fonts = 1

call pathogen#helptags()
