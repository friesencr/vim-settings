set nocompatible              " vim, not vi
filetype off                   " Enable filetype detection

if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

call plug#begin('~/.vim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Plug 'beyondmarc/hlsl.vim'
" Plug 'bronson/vim-trailing-whitespace'
" Plug 'ekalinin/Dockerfile.vim'
" Plug 'gilligan/vim-lldb'
" Plug 'gregsexton/MatchTag'
" Plug 'kana/vim-textobj-user'
Plug 'othree/html5.vim'
" Plug 'radenling/vim-dispatch-neovim'
" Plug 'skalnik/vim-vroom'
" Plug 'skwp/vim-html-escape'
Plug 'tpope/vim-rails'
" Plug 'tpope/vim-rake'
" Plug 'tsaleh/vim-matchit'
" Plug 'vim-ruby/vim-ruby'
" Plug 'xolox/vim-colorscheme-switcher'
" Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'
" Plug 'benekastah/neomake'
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote'), 'commit': '76dfa1a137b21bc3831fa8ecf013c644766c83d1' } 
Plug 'vim-airline/vim-airline'
" Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kchmck/vim-coffee-script'
" Plug 'clausreinke/typescript-tools.vim'
" Plug 'leafgarland/typescript-vim'
" Plug 'Quramy/tsuquyomi'
Plug 'leafo/moonscript-vim'
" Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-signify'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'pangloss/vim-javascript'
Plug 'rhysd/vim-go-impl'
" Plug 'rking/ag.vim'
Plug 'mileszs/ack.vim'
Plug 'tikhomirov/vim-glsl'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-dispatch'
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
Plug 'tpope/vim-jdaddy'
" Plug 'tsaleh/vim-align'
" Plug 'vim-scripts/a.vim'
Plug 'vim-scripts/visualrepeat'
" Plug 'chrisbra/csv.vim'
" Plug 'Quramy/tsuquyomi'
Plug 'HerringtonDarkholme/yats.vim'
" Plug 'Shougo/unite.vim'
Plug 'moll/vim-node'
Plug 'neovim/node-host'
" Plug 'myint/syntastic-extras'
Plug 'mxw/vim-jsx'
" Plug 'ternjs/tern_for_vim'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'junegunn/vim-easy-align'
" Plug 'asymmetric/upstart.vim'
" Plug 'garyburd/go-explorer'
" Plug 'vim-ctrlspace/vim-ctrlspace'
" Plug 'mhartington/oceanic-next'
" Plug 'warbear0129/vim-qtpl'
Plug 'jodosha/vim-godebug'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
filetype plugin indent on    " required`

syntax on
" set background=light
colorscheme Monokai

set t_Co=256
set background=light

let g:airline_theme='papercolor'

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

"
map <leader>f :Files ./<cr>
map <leader>b :Buffers<cr>

" projectionist alternate mapping
map <leader>ga :A<cr>

" TagBar
nmap <F8> :TagbarToggle<CR>

map <leader>m :Make<CR>

" Ctags
" set tags=./tags;/,~/.vimtags
" set shell=$SHELL
set shell=$SHELL
set hidden

" replace selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" syntastic
let g:syntastic_ignore_files = ['\.as$']
" let g:syntastic_disabled_filetypes=['go']

" GO stuf
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_list_type = "quickfix"
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>gb <Plug>(go-build)

" let g:go_auto_type_info = 1

" rules by filetype
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype haml setlocal ts=2 sts=2 sw=2
autocmd Filetype moon setlocal ts=2 sts=2 sw=2

let g:deoplete#enable_at_startup = 1
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources.ruby = ['omni']
" let g:deoplete#auto_completion_start_length = 0
" let g:deoplete#enable_refresh_always = 1
let g:deoplete#sources = {}
" let g:deoplete#sources._ = ['buffer', 'tag']
let g:deoplete#sources.ruby = []

" lazy close
nnoremap <leader>c :close<CR>

" au BufRead,BufNewFile *.as set filetype=cpp
au BufRead,BufNewFile *.as set syntax=cpp
au BufRead,BufNewFile *.qtpl set syntax=html

" commentary
autocmd FileType moon set commentstring=--\ %s
autocmd FileType glsl set commentstring=\/\/\ %s
autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype cpp setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" typescript
" let g:typescript_compiler_options = '--jsx react'
" let g:syntastic_typescript_tsc_args = '--target ES5 --jsx react --module commonjs'
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
let g:syntastic_javascript_checkers = ['eslint']

" let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
" let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" autocmd! BufWritePost * Neomake
"


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" indent guides
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=grey
hi IndentGuidesEven ctermbg=lightgrey

let g:go_term_enabled=1

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
