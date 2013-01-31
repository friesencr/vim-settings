set nocompatible              " vim, not vi
filetype off                   " Enable filetype detection

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle.git'
Bundle 'tpope/vim-sensible.git'
Bundle 'tpope/vim-sleuth'
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
Bundle 'bronson/vim-trailing-whitespace.git'
Bundle 'skalnik/vim-vroom'
Bundle 'tpope/vim-haml.git'
Bundle 'tpope/vim-ragtag.git'
" Bundle 'cakebaker/scss-syntax.vim.git'
Bundle 'Rip-Rip/clang_complete'
Bundle 'honza/snipmate-snippets'
Bundle 'garbas/vim-snipmate.git'
Bundle 'honza/snipmate-snippets'
Bundle 'derekwyatt/vim-fswitch.git'

syntax on
colorscheme vividchalk

set number
let mapleader = ","
let g:mapleader = ","

if has("gui_running")
	if has("gui_gtk2")
		set guifont=Inconsolata\ 12
	elseif has("gui_win32")
		set guifont=Consolas:h11:cANSI
	endif
endif

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

" SuperTab
let g:SuperTabDefaultCompletionType = "context"

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Disable auto popup, use <Tab> to autocomplete
let g:clang_complete_auto = 0
" Show clang errors in the quickfix window
let g:clang_complete_copen = 1

" Rails
nnoremap <silent> <Leader>a :A<CR>
