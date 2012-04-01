syntax on
colorscheme vividchalk

if has("gui_running")
	if has("gui_gtk2")
		set guifont=Inconsolata\ 12
	elseif has("gui_win32")
		set guifont=Consolas:h11:cANSI
	endif
endif

set background=dark
set ruler                     " show the line number on the bar
set more                      " use more prompt
set autoread                  " watch for file changes
set number                    " line numbers
set hidden
set noautowrite               " don't automagically write on :next
set lazyredraw                " don't redraw when don't have to
set showmode
set showcmd
set nocompatible              " vim, not vi
set autoindent smartindent    " auto/smart indent
set smarttab                  " tab and backspace are smart
set tabstop=2                 " 6 spaces
set shiftwidth=2
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set history=200
set backspace=indent,eol,start
set linebreak
set cmdheight=2               " command line two lines high
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
" set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set ttyfast                   " we have a fast terminal
set noerrorbells              " No error bells please

if has('win32')
	set ffs=dos
	set ff=unix
endif

filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin on            " Enable filetype-specific plugins
set wildmode=longest:full
set wildmenu                  " menu has tab completion
" let maplocalleader=','        " all my macros start with ,
let mapleader=','
set laststatus=2
set foldmethod=syntax

"  searching
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync

"  backup
set backup
set backupdir=~/.vim_backup
set directory=~/.vim_swap
set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
"set viminfo='100,f1

" spelling
if v:version >= 700
	" Enable spell check for text files
	autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
endif

" razor templates
autocmd BufNewFile,BufRead *.cshtml set filetype=html

call pathogen#infect()

" nmap <Leader>f :FufBuffer<CR>
" nmap <Leader>e :FufFile<CR>

" Command-T
nnoremap <silent> <Leader>f :CommandT<CR>

" Detect if omni complete is available
if has("autocmd") && exists("+omnifunc")
	autocmd Filetype *
				\if &omnifunc == "" |
				\setlocal omnifunc=syntaxcomplete#Complete |
				\endif
endif

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" Ctags
set tags=./tags;/,~/.vimtags

" EasyTags
let g:easytags_cmd = 'ctags'

" SuperTab
let g:SuperTabDefaultCompletionType = "context"

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Rails
nnoremap <silent> <Leader>a :A<CR>
