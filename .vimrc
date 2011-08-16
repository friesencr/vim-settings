call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

syntax enable
set background=dark
colorscheme wombat

"Map NERDTree to \p
nmap <silent> <Leader>p :NERDTreeToggle<CR>

"Filetype
set filetype=on
set fileformats=mac,unix,dos
filetype plugin on
filetype indent on

"set ai
set ts=2
set sts=2
set et
set sw=2
set textwidth=79
set number
"set autoindent
set foldmethod=syntax

