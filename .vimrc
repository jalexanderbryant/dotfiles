set number	        " Show line numbers
"set linebreak	        " Break lines at word (requires Wrap lines)
"set textwidth=80	" Line wrap (number of cols)
set showmatch	        " Highlight matching brace
set visualbell	        " Use visual bell (no beeping)
 
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set cindent	" Use 'C' style program indenting
set expandtab	" Use spaces instead of tabs
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
 
"" Advanced
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour


"" Lets update some keystrokes
" Reduce the keystrokes for moving between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

"" Configurations for Netrw (File directory)
" Change File Tree format
let g:netrw_liststyle = 3

" Remove banner from netrw
let g:netrw_banner = 0

" Open new files in a new vertical split 
let g:netrw_browse_split = 2

" Fix the width to a certain percentage
let g:netrw_winsize = 15

" Set The Netrw to open on startup
augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * if argc() == 1 || argc() == 0 | :Vexplore | endif
augroup END
