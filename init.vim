set nocompatible              " vim, not vi
filetype off                   " Enable filetype detection

call plug#begin('~/.vim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

" let g:ale_completion_enabled = 1
" let g:deoplete#enable_at_startup = 1

" Functional/UI
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/deoplete-lsp'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
" Plug 'liuchengxu/vim-clap'
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-signify'
Plug 'mileszs/ack.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
" Plug 'Yggdroot/LeaderF', { 'do': '.\install.bat' }
Plug 'tikhomirov/vim-glsl'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'liuchengxu/eleline.vim'
Plug 'liuchengxu/vista.vim'
" Plug 'neovim/nvim-lsp'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/visualrepeat'
" Plug 'dense-analysis/ale'

" Syntax
Plug 'ianks/vim-tsx'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-markdown'


" Ruby
Plug 'tpope/vim-rails'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'deoplete-plugins/deoplete-go', { 'do': 'make' }

" colors
Plug 'fenetikm/falcon'
" Plug 'xolox/vim-colorscheme-switcher'
Plug 'NLKNguyen/papercolor-theme'
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'liuchengxu/space-vim-theme'
Plug 'rakr/vim-one'

" typescript
Plug 'HerringtonDarkholme/yats.vim'
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

" vue
" Plug 'posva/vim-vue'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'digitaltoad/vim-pug'
Plug 'cakebaker/scss-syntax.vim'

" js
Plug 'kchmck/vim-coffee-script'

" Plug 'Shougo/unite.vim'
" Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Plug 'asymmetric/upstart.vim'
" Plug 'benekastah/neomake'
" Plug 'beyondmarc/hlsl.vim'
" Plug 'bronson/vim-trailing-whitespace'
" Plug 'chrisbra/csv.vim'
" Plug 'ekalinin/Dockerfile.vim'
" Plug 'garyburd/go-explorer'
" Plug 'gilligan/vim-lldb'
" Plug 'gregsexton/MatchTag'
" Plug 'jodosha/vim-godebug'
" Plug 'kana/vim-textobj-user'
" Plug 'leafo/moonscript-vim'
" Plug 'majutsushi/tagbar'
" Plug 'mhartington/oceanic-next'
" Plug 'moll/vim-node'
" Plug 'mxw/vim-jsx'
" Plug 'myint/syntastic-extras'
" Plug 'neovim/node-host'
" Plug 'othree/html5.vim'
" Plug 'pangloss/vim-javascript'
" Plug 'radenling/vim-dispatch-neovim'
" Plug 'rking/ag.vim'
" Plug 'scrooloose/nerdtree'
" Plug 'shmup/vim-sql-syntax'
" Plug 'skalnik/vim-vroom'
" Plug 'skwp/vim-html-escape'
" Plug 'ternjs/tern_for_vim'
" Plug 'tpope/vim-dispatch'
" Plug 'tpope/vim-rake'
" Plug 'tsaleh/vim-align'
" Plug 'tsaleh/vim-matchit'
" Plug 'vim-ctrlspace/vim-ctrlspace'
" Plug 'vim-ruby/vim-ruby'
" Plug 'vim-scripts/a.vim'
" Plug 'vim-syntastic/syntastic'
" Plug 'warbear0129/vim-qtpl'

call plug#end()
filetype plugin indent on    " required`

syntax on

set termguicolors
" set t_Co=256
" colorscheme gruvbox
colorscheme one
set background=dark

" let g:falcon_airline = 1
" let g:airline_theme = 'falcon'
" let g:falcon_background = 0
" let g:falcon_inactive = 1
" colorscheme falcon
" let g:airline_theme='papercolor'
" let ayucolor="mirage" " for mirage version of theme
" let g:airline_theme='gruvbox'
" colorscheme space_vim_theme

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
set hidden
" set cursorline
nnoremap <CR> :nohlsearch<CR><CR>
let mapleader = ","
let g:mapleader = ","


if has("gui_win32")
	set guifont=Consolas:h11:cANSI
endif

" " vim-clap
" " let g:clap_use_pure_python = 1
" map <leader>f :Clap files ./<cr>
" map <leader>b :Clap buffers<cr>
" map <leader>s :Clap grep<cr>
" map <leader>q :Clap quickfix<cr>
" let g:clap_theme = 'material_design_dark'

" LeaderF
" let g:Lf_WindowPosition = 'popup'
" let g:Lf_PreviewInPopup = 1
" let g:Lf_ShowDevIcons = 0
" noremap <leader>f :<C-U><C-R>=printf("Leaderf file %s", "")<CR><CR>
" noremap <leader>b :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
" noremap <leader>s :<C-U><C-R>=printf("Leaderf rg %s", "")<CR><CR>

" fzf 
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

" nnoremap <leader>f :GFiles?<Cr>
nnoremap <leader>b :Buffers<Cr>
nnoremap <leader>f :Files<Cr>
nnoremap <leader>s :Ag<Cr>

" projectionist alternate mapping
map <leader>ga :A<cr>

" TagBar
nmap <F8> :Vista!!<CR>

map <leader>m :Make<CR>

" Ctags
" set tags=./tags;/,~/.vimtags
" set shell=$SHELL

" replace selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" syntastic
" let g:syntastic_ignore_files = ['\.as$']
" let g:syntastic_disabled_filetypes=['go']
"

" GO stuf
let g:go_fmt_command = "goimports"
au FileType go nmap <leader>gb <Plug>(go-build)
 
" test runners
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tg :TestVisit<CR>

" rules by filetype
" autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
" autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
" autocmd Filetype html setlocal ts=2 sts=2 sw=2
" autocmd Filetype haml setlocal ts=2 sts=2 sw=2
" autocmd Filetype moon setlocal ts=2 sts=2 sw=2

" call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
" let g:deoplete#ignore_sources = {}
" let g:deoplete#ignore_sources.ruby = ['omni']
" " let g:deoplete#auto_completion_start_length = 0
" " let g:deoplete#enable_refresh_always = 1
" let g:deoplete#sources = {}
" " let g:deoplete#sources._ = ['buffer', 'tag']
" let g:deoplete#sources.ruby = []

" let g:deoplete#sources#go#source_importer = 1
" let g:deoplete#sources#go#builtin_objects = 1
" let g:deoplete#sources#go#unimported_packages = 1


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


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" indent guides
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=grey
hi IndentGuidesEven ctermbg=lightgrey

" indent line
let g:indentLine_setConceal = 0

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:ale_linters = { 'ruby': ['ruby'], }

" let g:ale_lint_delay = 3000
" let g:deoplete#sources = {'_': ['ale']}

" eleline
set laststatus=2
" let g:airline_powerline_fonts = 1
" let g:eleline_powerline_fonts = 1
let g:eleline_slim = 1

" vista
" function! NearestMethodOrFunction() abort
"   return get(b:, 'vista_nearest_method_or_function', '')
" endfunction

" set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc 
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()


"
" coc settings
"
set cmdheight=2
" don't give |ins-completion-menu| messages.
set shortmess+=c

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" always show signcolumns
set signcolumn=yes

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"
" end coc
"

" vue
let g:vim_vue_plugin_load_full_syntax = 1
let g:vim_vue_plugin_use_pug = 1
let g:vim_vue_plugin_use_typescript = 1
let g:vim_vue_plugin_use_sass = 1

