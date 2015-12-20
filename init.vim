set nocompatible              " vim, not vi
filetype off                   " Enable filetype detection

call plug#begin('~/.vim/plugged')

" Plug 'beyondmarc/hlsl.vim'
" Plug 'bronson/vim-trailing-whitespace'
" Plug 'ekalinin/Dockerfile.vim'
" Plug 'gilligan/vim-lldb'
" Plug 'gregsexton/MatchTag'
" Plug 'kana/vim-textobj-user'
" Plug 'othree/html5.vim'
" Plug 'radenling/vim-dispatch-neovim'
" Plug 'skalnik/vim-vroom'
" Plug 'skwp/vim-html-escape'
" Plug 'tpope/vim-rails'
" Plug 'tpope/vim-rake'
" Plug 'tsaleh/vim-matchit'
" Plug 'vim-ruby/vim-ruby'
" Plug 'xolox/vim-colorscheme-switcher'
Plug 'Shougo/deoplete.nvim'
Plug 'benekastah/neomake'
Plug 'bling/vim-airline'
Plug 'clausreinke/typescript-tools.vim'
Plug 'fatih/vim-go'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'leafgarland/typescript-vim'
Plug 'leafo/moonscript-vim'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-signify'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'pangloss/vim-javascript'
Plug 'rhysd/vim-go-impl'
Plug 'rking/ag.vim'
Plug 'tikhomirov/vim-glsl'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'tsaleh/vim-align'
Plug 'vim-scripts/a.vim'
Plug 'vim-scripts/visualrepeat'

call plug#end()
filetype plugin indent on    " required`

syntax on
set background=dark
colorscheme molokai

set number
set wildignore+=*.o,*.obj,.git,*.dynlib
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set mouse=ar
set nocursorline
set nobackup
set noswapfile
set hlsearch
" set clipboard+=unnamedplus
set nomodeline
set textwidth=120
nnoremap <CR> :nohlsearch<CR><CR>
" set cursorline

let mapleader = ","
let g:mapleader = ","

if has("gui_win32")
	set guifont=Consolas:h11:cANSI
endif

" set t_Co=256
"
map <leader>f :Files ./<cr>
map <leader>b :Buffers<cr>

" projectionist alternate mapping
map <leader>ga :A<cr>

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

let g:colorscheme_switcher_define_mappings = 0
nnoremap <F4> :NextColorScheme<CR>
nnoremap <C-F4> :PrevColorScheme<CR>

let g:deoplete#enable_at_startup = 1

" if has("autocmd")
" 	autocmd FileType ruby set omnifunc=rubycomplete#Complete
" 	" let g:rubycomplete_load_gemfile = 1
" 	" let g:rubycomplete_use_bundler = 1
" endif

" map to ycm go to def/dec
" nnoremap <leader><F12> :YcmCompleter GoTo<CR>
" nnoremap <leader>gd :YcmCompleter GoTo<CR> 
" nnoremap <leader>gd :YcmCompleter GoTo<CR>
" let g:ycm_collect_identifiers_from_tags_files = 1

" lazy close
nnoremap <leader>c :close<CR>

" au BufRead,BufNewFile *.as set filetype=cpp
au BufRead,BufNewFile *.as set syntax=cpp

" commentary
autocmd FileType moon set commentstring=--\ %s
autocmd FileType glsl set commentstring=\/\/\ %s

" autocmd BufNewFile,BufRead *.vp,*.fp,*.gp,*.vs,*.fs,*.gs,*.tcs,*.tes,*.cs,*.vert,*.frag,*.geom,*.tess,*.shd,*.gls,*.glsl set ft=glsl330

" airline
" let g:airline_theme = 'pencil'

" white space
autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype cpp setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" gdb
let g:ConqueGdb_Leader = '\'
