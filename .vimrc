set nocompatible              " vim, not vi
filetype off                   " Enable filetype detection

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle.git'
Plugin 'tpope/vim-sensible.git'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-dispatch'
" Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'majutsushi/tagbar.git'
Plugin 'tpope/vim-bundler.git'
Plugin 'kchmck/vim-coffee-script.git'
Plugin 'tpope/vim-commentary.git'
" Plugin 'gregsexton/MatchTag.git'
" Plugin 'tsaleh/vim-matchit.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'pangloss/vim-javascript.git'
Plugin 'tpope/vim-rails.git'
Plugin 'vim-ruby/vim-ruby.git'
Plugin 'tpope/vim-rake'
Plugin 'tsaleh/vim-align.git'
" Plugin 'tpope/vim-markdown.git'
" Plugin 'bronson/vim-trailing-whitespace.git'
" Plugin 'skalnik/vim-vroom'
" Plugin 'tpope/vim-haml.git'
" Plugin 'tpope/vim-ragtag.git'
" Plugin 'tpope/vim-surround.git'
" Plugin 'skwp/vim-html-escape.git'
Plugin 'mhinz/vim-signify'
" Plugin 'Lokaltog/vim-powerline.git'
Plugin 'vitaly/vim-gitignore.git'
" Plugin 'thoughtbot/vim-rspec'
Plugin 'kien/ctrlp.vim.git'
Plugin 'Valloric/YouCompleteMe.git'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/a.vim'
Plugin 'tikhomirov/vim-glsl'
Plugin 'leafo/moonscript-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'nosami/Omnisharp'
Plugin 'fatih/vim-go'
Plugin 'bling/vim-airline'
Plugin 'JazzCore/ctrlp-cmatcher'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-vinegar'
Plugin 'rking/ag.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-shell'
Plugin 'tpope/vim-unimpaired'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'othree/html5.vim'

call vundle#end()            " required
filetype plugin indent on    " required`

syntax on
colorscheme molokai
" set background=dark

set number
set wildignore+=*.o,*.obj,.git,*.dynlib
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set mouse=ar
set nocursorline
set nobackup
set noswapfile

let mapleader = ","
let g:mapleader = ","

if has("gui_win32")
	set guifont=Consolas:h11:cANSI
endif

set t_Co=256

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlP ./<cr>
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

map <leader>m :Make<CR>

" Ctags
set tags=./tags;/,~/.vimtags
" set shell=$SHELL
set shell=$SHELL
set hidden

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
autocmd Filetype moon setlocal ts=2 sts=2 sw=2

" if has("autocmd")
" 	autocmd FileType ruby set omnifunc=rubycomplete#Complete
" 	" let g:rubycomplete_load_gemfile = 1
" 	" let g:rubycomplete_use_bundler = 1
" endif

" ctrl p c matcher
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

" map to ycm go to def/dec
nnoremap <leader>gd :YcmCompleter GoTo<CR>
let g:ycm_collect_identifiers_from_tags_files = 1

" lazy close
nnoremap <leader>c :close<CR>

au BufRead,BufNewFile *.as set filetype=cpp

" commentary
autocmd FileType moon set commentstring=--\ %s
autocmd FileType glsl set commentstring=\/\/\ %s

" autocmd BufNewFile,BufRead *.vp,*.fp,*.gp,*.vs,*.fs,*.gs,*.tcs,*.tes,*.cs,*.vert,*.frag,*.geom,*.tess,*.shd,*.gls,*.glsl set ft=glsl330

" airline
" let g:airline_theme = 'pencil'

" white space
autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype cpp setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" set paste mode when pasting from clipboard
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
