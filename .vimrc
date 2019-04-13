" setting
" Set encoding to UTF-8
set fenc=utf-8
" Don't create backup file
set nobackup
" Don't create swap file
set noswapfile
" Automatically reload file when updated
set autoread
" Open file when editing buffer
set hidden
" Show command to status in the input
set showcmd


" Apperance
" Show number of lines
set number
" Enphasize current line
set cursorline
highlight CursorLine cterm=none ctermbg=238 
" Enable edit one more column in the end of line
set virtualedit=onemore
" Smart indent
set smartindent
" Visualize beep
set visualbell
" Show match case of bracket
set showmatch
" Always show status line
set laststatus=2
" Enable command line assist
set wildmode=list:longest
" Enable moving line along WYSIWYG
nnoremap j gj
nnoremap k gk


" Tab shifting
" Use space instead of 'tab charactor'
set expandtab
" Tab length in the middle of line
set tabstop=4
" Tab length in the begging of line
set shiftwidth=4


" Finding
" Ignore charactor case when includes lower case only
set ignorecase
" Recognize charactor case when includes upper case
set smartcase
" Real time search
set incsearch
" Wrap search position
set wrapscan
" Highlighting search words
set hlsearch
" Disalbe highlighting when double esc
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" others
" Syntax highlighting
syntax on
" Auto indent
set autoindent

