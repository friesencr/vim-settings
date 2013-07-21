set nocompatible              " vim, not vi
filetype off                   " Enable filetype detection

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle.git'
Bundle 'tpope/vim-sensible.git'
Bundle 'tpope/vim-sleuth'
Bundle 'tpope/vim-dispatch'
Bundle 'scrooloose/nerdtree.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'majutsushi/tagbar.git'
" Bundle 'tpope/vim-bundler.git'
Bundle 'kchmck/vim-coffee-script.git'
Bundle 'tpope/vim-commentary.git'
" Bundle 'gregsexton/MatchTag.git'
" Bundle 'tsaleh/vim-matchit.git'
Bundle 'tpope/vim-fugitive.git'
" Bundle 'nathanaelkane/vim-indent-guides'
" Bundle 'pangloss/vim-javascript.git'
Bundle 'tpope/vim-rails.git'
" Bundle 'vim-ruby/vim-ruby.git'
" Bundle 'tpope/vim-rake'
" Bundle 'tsaleh/vim-align.git'
" Bundle 'tpope/vim-markdown.git'
Bundle 'mileszs/ack.vim'
" Bundle 'bronson/vim-trailing-whitespace.git'
" Bundle 'skalnik/vim-vroom'
" Bundle 'tpope/vim-haml.git'
" Bundle 'tpope/vim-ragtag.git'
" Bundle 'tpope/vim-surround.git'
" Bundle 'skwp/vim-html-escape.git'
" Bundle 'airblade/vim-gitgutter.git'
" Bundle 'Lokaltog/vim-powerline.git'
Bundle 'vitaly/vim-gitignore.git'
" Bundle 'thoughtbot/vim-rspec'
Bundle "kien/ctrlp.vim.git"
" Bundle 'SirVer/ultisnips.git'
Bundle 'Valloric/YouCompleteMe.git'
Bundle 'flazz/vim-colorschemes'
Bundle 'vim-scripts/a.vim'

filetype on
syntax on
filetype indent on
filetype plugin on
colorscheme jelleybeans

set number
set wildignore+=*.o,*.obj,.git,*.dynlib
set mouse=ar

let mapleader = ","
let g:mapleader = ","

if has("gui_win32")
	set guifont=Consolas:h11:cANSI
endif

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

let s:dir = has('win32') ? '$APPDATA/Vim' : match(system('uname'), "Darwin") > -1 ? '~/Library/Vim' : empty($XDG_DATA_HOME) ? '~/.local/share/vim' : '$XDG_DATA_HOME/vim'
if isdirectory(expand(s:dir))
  if &directory =~# '^\.,'
    let &directory = expand(s:dir) . '/swap//,' . &directory
  endif
  if &backupdir =~# '^\.,'
    let &backupdir = expand(s:dir) . '/backup//,' . &backupdir
  endif
  if exists('+undodir') && &undodir =~# '^\.\%(,\|$\)'
    let &undodir = expand(s:dir) . '/undo//,' . &undodir
  endif
endif
if exists('+undofile')
  set undofile
endif

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlP<cr>
map <leader>gv :CtrlP app/views<cr>
map <leader>gc :CtrlP app/controllers<cr>
map <leader>gm :CtrlP app/models<cr>
map <leader>gh :CtrlP app/helpers<cr>
map <leader>gl :CtrlP lib<cr>
map <leader>gs :CtrlP app/assets/stylesheets<cr>
map <leader>gj :CtrlP app/assets/javascripts<cr>
map <leader>gt :CtrlP spec<cr>
map <leader>b :CtrlPBuffer<cr>
map <leader>gr :e config/routes.rb<cr>
map <leader>gg :e Gemfile<cr>

" TagBar
nmap <F8> :TagbarToggle<CR>

" Ultisnips
let g:UltiSnipsExpandTrigger = '<c-l>'
let g:UltiSnipsListSnippets = '<c-m>'

" Ctags
set tags=./tags;/,~/.vimtags

" replace selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" syntastic
let g:syntastic_ignore_files = ['\.as$']

map <Leader>t :Rrunner<CR>

" rules by filetype
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype haml setlocal ts=2 sts=2 sw=2

au BufRead,BufNewFile *.as set filetype=cpp
