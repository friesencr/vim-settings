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

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle.git'
Bundle 'vim-scripts/FuzzyFinder.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'ervandew/supertab.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'majutsushi/tagbar.git'
Bundle 'tpope/vim-bundler.git'
Bundle 'kchmck/vim-coffee-script.git'
Bundle 'tpope/vim-commentary.git'
Bundle 'hail2u/vim-css3-syntax.git'
" Bundle 'skammer/vim-css-color.git'
Bundle 'gregsexton/MatchTag.git'
Bundle 'tsaleh/vim-matchit.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'pangloss/vim-javascript.git'
Bundle 'Lokaltog/vim-powerline.git'
Bundle 'tpope/vim-rails.git'
Bundle 'vim-ruby/vim-ruby.git'
Bundle 'tpope/vim-rake'
Bundle 'xolox/vim-shell.git'
Bundle 'tpope/vim-surround.git'
Bundle 'xolox/vim-lua-ftplugin.git'
Bundle 'tomtom/tlib_vim.git'
Bundle 'MarcWeber/vim-addon-mw-utils.git'
Bundle 'vim-scripts/L9.git'
Bundle 'wincent/Command-T.git'
Bundle 'tsaleh/vim-align.git'
Bundle 'tpope/vim-markdown.git'
Bundle 'mileszs/ack.vim'

" nmap <Leader>f :FufBuffer<CR>
" nmap <Leader>e :FufFile<CR>

" Command-T
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>gf :CommandTFlush<cr>\|:CommandT %%<cr>
map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
map <leader>gl :CommandTFlush<cr>\|:CommandT lib<cr>
map <leader>gs :CommandTFlush<cr>\|:CommandT app/assets/stylesheets<cr>
map <leader>gj :CommandTFlush<cr>\|:CommandT app/assets/javascripts<cr>
map <leader>gr :e config/routes.rb<cr>
map <leader>gg :e Gemfile<cr>

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
