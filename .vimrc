set number	        " Show line numbers
"set linebreak	        " Break lines at word (requires Wrap lines)
"set textwidth=80	" Line wrap (number of cols)
set showmatch	        " Highlight matching brace
set visualbell	        " Use visual bell (no beeping)



set colorcolumn=80      " Place a visual ruler at column 80

"" Enable code folding
set foldmethod=indent
set foldlevel=99
" Enable folding with spacebar
nnoremap <space> za

set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
"set cindent	" Use 'C' style program indenting
set expandtab	" Use spaces instead of tabs
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab


"" Set PEP 8 indentation for python files
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79      " Keep line length under 80 characters
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix   " Store file in unix format

"" Flag unnecessary white space for PEP8 compliance
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"" Use UTF-8 encoding
set encoding=utf-8

"" Pretty up python code
let python_highlight_all=1
syntax on



"" Tab stop customizations for Web related files (HTML/CSS/JS)
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


"" Advanced
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

set autoread " Reload file when it's been changed outside of vim


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


"" Configure NERDTree
" Open NT on start
autocmd vimenter * NERDTree

" Open NT with CTRL+n when needed
map <C-n> :NERDTreeToggle<CR>


"" Configuration for Vundle
set nocompatible        " required
filetype off            " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle mange Vundle, required
" Place all plugins here...
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
"Bundle 'Valloric/YouCompleteMe' " Autocomplete....may take this out later
Plugin 'nvie/vim-flake8' " PEP 8 compliance cheching...may take this out later
Plugin 'kien/ctrlp.vim' " CTRL-P for searching. Can search for anything
Plugin 'tpope/vim-fugitive' " Use to run git commands from Vim. Best used on 
                            " commands that don't have a ton of output

" Improved status bar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} 
Plugin 'https://github.com/scrooloose/nerdtree.git'



" All of your Plugins must be added before the following line
call vundle#end()       " required
filetype plugin indent on " required

