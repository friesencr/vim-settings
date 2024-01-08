set nocompatible              " vim, not vi
filetype off                   " Enable filetype detection

call plug#begin('~/.vim/plugged')

" configuration
" Plug 'editorconfig/editorconfig-vim'

"lsp"
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
" Plug 'mhanberg/output-panel.nvim'

" Plug 'alexaandru/nvim-lspupdate'
Plug 'nvim-lua/plenary.nvim'
" Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'j-hui/fidget.nvim'



"treesitter"
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" Functional/UI
Plug 'nvim-tree/nvim-web-devicons'

" Plug 'janko-m/vim-test'
" telescope
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }


" tree
Plug 'nvim-tree/nvim-tree.lua'

" code action menu
Plug 'weilbith/nvim-code-action-menu'

Plug 'folke/lsp-trouble.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'akinsho/nvim-bufferline.lua'
" Plug 'romgrk/barbar.nvim'
Plug 'folke/which-key.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'SmiteshP/nvim-navic'
Plug 'SmiteshP/nvim-navbuddy'
Plug 'utilyre/barbecue.nvim'

"completion"
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'rcarriga/cmp-dap'
Plug 'hrsh7th/nvim-cmp'

"snippets"
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'junegunn/vim-easy-align'
Plug 'lewis6991/gitsigns.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'mileszs/ack.vim'
Plug 'vim-scripts/visualrepeat'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'
"Plug 'terrortylor/nvim-comment'
Plug 'numToStr/Comment.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'simrat39/symbols-outline.nvim'
" Plug 'pechorin/any-jump.vim'
" Plug 'glepnir/lspsaga.nvim'
" Plug 'kevinhwang91/nvim-bqf'
" Plug 'ray-x/lsp_signature.nvim'
Plug 'Xuyuanp/scrollbar.nvim'
" Plug 'simrat39/symbols-outline.nvim'
" Plug 'rgroli/other.nvim'
" Plug 'kosayoda/nvim-lightbulb'
" Plug 'sindrets/diffview.nvim'
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Plug 'ellisonleao/glow.nvim'



" debug
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'jay-babu/mason-nvim-dap.nvim'
" Plug 'ray-x/guihua.lua', {'do': 'cd lua/fzy && make' }

" other
" Plug 'tikhomirov/vim-glsl'
Plug 'tpope/vim-abolish'
" Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-projectionist'
" Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'

" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-unimpaired'
" Plug 'tpope/vim-vinegar'

" Syntax
" Plug 'kamailio/vim-kamailio-syntax'

" Ruby

" Go
" Plug 'ray-x/go.nvim'

" typescript

" vue

" arduino
" Plug 'stevearc/vim-arduino'

" js
" Plug 'kchmck/vim-coffee-script'
"
" colors
" Plug 'neanias/everforest-nvim', { 'branch': 'main' }
Plug 'folke/tokyonight.nvim'
" Plug 'rebelot/kanagawa.nvim'
" Plug 'catppuccin/nvim', {'as': 'catppuccin'}
" Plug 'marko-cerovac/material.nvim'


call plug#end()
filetype plugin indent on    " required`

syntax on

set encoding=UTF-8
set termguicolors
set background=dark
set autoindent
set smartindent
" set updatetime=500
" set t_Co=256
"
" let g:airline_theme='kanagawa'
" colorscheme kanagawa

colorscheme tokyonight-night

" colorscheme everforest


set number
set wildignore+=*.o,*.obj,.git,*.dynlib
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
" set mouse=ar
set nocursorline
set nobackup
set noswapfile
set hlsearch
" set clipboard+=unnamedplus
" set nomodeline
set textwidth=120
set hidden
set completeopt=menu,menuone


set laststatus=3
set cmdheight=2
" don't give |ins-completion-menu| messages.
" set shortmess+=c

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
" set updatetime=500

" always show signcolumns
set signcolumn=yes
" set showmatch
" set matchtime=3
" set nolist
set incsearch
set scrolloff=10


" set cursorline
nnoremap <CR> :nohlsearch<CR><CR>
let mapleader = ","
let g:mapleader = ","

function! FormatStack()
  execute '%s/\\n/\r/g'
  execute '%s/\\t/\t/g'
endfunction

" if has("gui_win32")
" 	set guifont=Consolas:h11:cANSI
" endif
"
autocmd BufNewFile,BufRead *.json set filetype=jsonc

nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fs <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fq <cmd>lua require('telescope.builtin').quickfix()<cr>
nnoremap <leader>fd <cmd>lua require('telescope.builtin').diagnostics()<cr>
nnoremap <leader>fr <cmd>lua require('telescope.builtin').lsp_references()<cr>

" nnoremap <leader>v <cmd>CHADopen<cr>
" nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
" nnoremap <leader>ar <cmd>lua vim.lsp.buf.rename()<cr>
nnoremap <leader>f- <cmd>lua require('telescope.builtin').file_browser({cwd = vim.fn.expand('%:p:h')})<cr>

" nnoremap - <cmd>lua require('telescope.builtin').file_browser()<cr>
" nnoremap - <cmd>lua require('telescope.builtin').file_browser({cwd = vim.fn.expand('%:p:h')})<cr>
" nnoremap - <cmd>:Ex<cr>
nnoremap - <cmd>:NvimTreeFindFile<cr>
nnoremap <leader>v <cmd>:NvimTreeToggle<CR>
nnoremap <leader>aa <cmd>:CodeActionMenu<CR>

map <leader>o :SymbolsOutline<cr>

" projectionist alternate mapping
map <leader>ga :A<cr>

map <leader>m :Make<CR>

" replace selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>

 
" test runners
" nmap <silent> <leader>tn :TestNearest<CR>
" nmap <silent> <leader>tf :TestFile<CR>
" nmap <silent> <leader>ts :TestSuite<CR>
" nmap <silent> <leader>tl :TestLast<CR>
" nmap <silent> <leader>tg :TestVisit<CR>

" rules by filetype
" autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
" autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
" autocmd Filetype html setlocal ts=2 sts=2 sw=2
" autocmd Filetype haml setlocal ts=2 sts=2 sw=2
" autocmd Filetype moon setlocal ts=2 sts=2 sw=2

" lazy close
nnoremap <leader>c :close<CR>
" nnoremap <C-l> :BufferNext<CR>
" nnoremap <C-h> :BufferPrev<CR>
nnoremap <C-l> :BufferLineCycleNext<CR>
nnoremap <C-h> :BufferLineCyclePrev<CR>

" au BufRead,BufNewFile *.as set filetype=cpp
au BufRead,BufNewFile *.as set syntax=cpp
au BufRead,BufNewFile *.qtpl set syntax=html
au BufRead,BufNewFile *.tpl set syntax=html
au BufRead,BufNewFile *.tmpl set syntax=html

" commentary
autocmd FileType moon set commentstring=--\ %s
autocmd FileType glsl set commentstring=\/\/\ %s
" autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
" autocmd Filetype cpp setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" augroup ScrollbarInit
"   autocmd!
"   autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
"   autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
"   autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
" augroup end

" vue
let g:vim_vue_plugin_load_full_syntax = 1
let g:vim_vue_plugin_use_pug = 1
let g:vim_vue_plugin_use_typescript = 1
let g:vim_vue_plugin_use_sass = 1

" nvim_tree"

" nnoremap <C-n> :NvimTreeToggle<CR>
" nnoremap <leader>r :NvimTreeRefresh<CR>
" nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen, NvimTreeClose, NvimTreeFocus and NvimTreeResize are also available if you need them

" a list of groups can be found at `:help nvim_tree_highlight`
" highlight NvimTreeFolderIcon guibg=Blue

lua <<EOF

vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldtext = "v:lua.vim.treesitter.foldtext()"

-- Setup nvim-cmp.

-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics,{ update_in_insert = false })

require('nvim-ts-autotag').setup()

local npairs = require("nvim-autopairs")
local Rule = require('nvim-autopairs.rule')
npairs.setup({
    check_ts = true,
})
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
require("nvim-autopairs").setup {}

local cmp = require'cmp'

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  enabled = function ()
    return vim.api.nvim_buf_get_option(0, "buftype") ~= "prompt"
      or require("cmp_dap").is_dap_buffer()
  end,
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp_signature_help' },
    { name = 'nvim_lsp', priority = 8 },
    { name = 'nvim_lua' },
    { name = 'dap' },
    { name = 'vsnip' }, -- For vsnip users.
    -- { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  })
})

cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))

-- lsp saga
-- nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
-- nnoremap <silent>K :Lspsaga hover_doc<CR>

require("lualine").setup{ 
  options = {
    theme = 'tokyonight'
  }
}
require("symbols-outline").setup()

-- require "lsp_signature".setup({})


-- treesitter
--

require'nvim-treesitter.configs'.setup {
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
-- vim.api.nvim_set_keymap('n', '<leader>q', '<cmd>lua vim.diagnostic.setqflist()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>q', '<cmd>lua vim.diagnostic.setqflist({ severity = { vim.diagnostic.severity.ERROR }})<CR>', opts)

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local navic = require("nvim-navic")
local navbuddy = require("nvim-navbuddy")

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>=', function()
      vim.lsp.buf.format { async = true }
    end, opts)

  end,
})

    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>=', '<cmd>lua vim.lsp.buf.format(nil, 20000)<CR>', opts)



local on_attach = function(client, bufnr)
  -- require "lsp_signature".on_attach({
  --   bind = true, -- This is mandatory, otherwise border config won't get registered.
  --   handler_opts = {
  --     border = "rounded"
  --   }
  -- }, bufnr)

  if client.server_capabilities.documentSymbolProvider then
      navic.attach(client, bufnr)
  end
  navbuddy.attach(client, bufnr)
end

-- local servers = { 'bashls', 'cssls', 'dockerls', 'eslint', 'gopls', 'html', 'jsonls', 'tsserver', 'vimls', 'volar', 'vuels', 'yamlls' } --'sumneko_lua', 'solargraph','diagnosticls',
-- for _, lsp in ipairs(servers) do
--   require('lspconfig')[lsp].setup{
--     on_attach = on_attach,
--     capabilities = capabilities,
--   }
-- end

-- setup mason
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
--
require("mason-lspconfig").setup({
  handlers = {
    -- The first entry (without a key) will be the default handler
    -- and will be called for each installed server that doesn't have
    -- a dedicated handler.
    function (server_name) -- default handler (optional)
      require("lspconfig")[server_name].setup {
        -- on_attach = on_attach,
        capabilities = capabilities,
        flags = {
          debounce_text_changes = 150,
        },
      }
    end,
  }
})

-- require("mason-nvim-dap").setup({
--     automatic_setup = true,
-- })
--
-- require'lspconfig'.jsonls.setup{
--   -- on_attach = on_attach,
--   capabilities = capabilities,
--   commands = {
--     Format = {
--       function()
--         vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
--       end
--     }
--   }
-- }
-- 
-- require'lspconfig'.stylelint_lsp.setup{
--   -- on_attach = on_attach,
--   capabilities = capabilities,
--   settings = {
--     stylelintplus = {
--       autoFixOnSave = true,
--       autoFixOnFormat = true,
--     }
--   },
-- }

-- require("null-ls").setup({
--     -- you can reuse a shared lspconfig on_attach callback here
--     sources = {
--       require("null-ls").builtins.formatting.gofumpt,
--     }
-- })

require("bufferline").setup{}

require("colorizer").setup{}

-- require("nvim_comment").setup{}
require("Comment").setup{}

-- colorize comment keywords
require("todo-comments").setup{}

-- which-key
require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
}

require('gitsigns').setup{}
require("lsp-colors").setup({})

-- following options are the default
require'nvim-tree'.setup { 
  view = {
    adaptive_size = true,
  }
}

-- barbecue

-- triggers CursorHold event faster
vim.opt.updatetime = 200

require("barbecue").setup({
  create_autocmd = false, -- prevent barbecue from updating itself automatically
  theme = 'tokyonight',
})

vim.api.nvim_create_autocmd({
  "WinScrolled", -- or WinResized on NVIM-v0.9 and higher
  "BufWinEnter",
  "CursorHold",
  "InsertLeave",

  -- include this if you have set `show_modified` to `true`
  "BufModifiedSet",
}, {
  group = vim.api.nvim_create_augroup("barbecue.updater", {}),
  callback = function()
    require("barbecue.ui").update()
  end,
})

-- -- diff view
-- local actions = require("diffview.actions")
--
-- require("diffview").setup({
-- })

--
-- Setup debugger
--

-- require("dapui").setup({
--   icons = { expanded = "▾", collapsed = "▸" },
--   mappings = {
--     -- Use a table to apply multiple mappings
--     expand = { "<CR>", "<2-LeftMouse>" },
--     open = "o",
--     remove = "d",
--     edit = "e",
--     repl = "r",
--     toggle = "t",
--   },
--   -- Expand lines larger than the window
--   -- Requires >= 0.7
--   expand_lines = vim.fn.has("nvim-0.7"),
--   -- Layouts define sections of the screen to place windows.
--   -- The position can be "left", "right", "top" or "bottom".
--   -- The size specifies the height/width depending on position.
--   -- Elements are the elements shown in the layout (in order).
--   -- Layouts are opened in order so that earlier layouts take priority in window sizing.
--   layouts = {
--     {
--       elements = {
--       -- Elements can be strings or table with id and size keys.
--         { id = "scopes", size = 0.25 },
--         "breakpoints",
--         "stacks",
--         "watches",
--       },
--       size = 40,
--       position = "left",
--     },
--     {
--       elements = {
--         "repl",
--         "console",
--       },
--       size = 10,
--       position = "bottom",
--     },
--   },
--   floating = {
--     max_height = nil, -- These can be integers or a float between 0 and 1.
--     max_width = nil, -- Floats will be treated as percentage of your screen.
--     border = "single", -- Border style. Can be "single", "double" or "rounded"
--     mappings = {
--       close = { "q", "<Esc>" },
--     },
--   },
--   windows = { indent = 1 },
--   render = {
--     max_type_length = nil, -- Can be integer or nil.
--   }
-- })
-- require("nvim-dap-virtual-text").setup()
-- 
-- vim.fn.sign_define('DapBreakpoint', {text='🟥', texthl='', linehl='', numhl=''})
-- vim.fn.sign_define('DapBreakpointRejected', {text='🟦', texthl='', linehl='', numhl=''})
-- vim.fn.sign_define('DapStopped', {text='⭐️', texthl='', linehl='', numhl=''})
-- 
-- vim.keymap.set('n', '<leader>dh', function() require"dap".toggle_breakpoint() end)
-- vim.keymap.set('n', '<leader>dH', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
-- vim.keymap.set('n', '<A-k>', function() require"dap".step_out() end)
-- vim.keymap.set('n', "<A-l>", function() require"dap".step_into() end)
-- vim.keymap.set('n', '<A-j>', function() require"dap".step_over() end)
-- vim.keymap.set('n', '<A-h>', function() require"dap".continue() end)
-- vim.keymap.set('n', '<A-e>', function() require"dapui".eval() end)
-- vim.keymap.set('n', '<leader>dd', function() require("dapui").toggle() end)
-- vim.keymap.set('n', '<leader>dn', function() require"dap".run_to_cursor() end)
-- vim.keymap.set('n', '<leader>dc', function() require"dap".terminate() end)
-- vim.keymap.set('n', '<leader>dR', function() require"dap".clear_breakpoints() end)
-- vim.keymap.set('n', '<leader>de', function() require"dap".set_exception_breakpoints({"all"}) end)
-- vim.keymap.set('n', '<leader>da', function() require"debugHelper".attach() end)
-- vim.keymap.set('n', '<leader>dA', function() require"debugHelper".attachToRemote() end)
-- vim.keymap.set('n', '<leader>di', function() require"dap.ui.widgets".hover() end)
-- vim.keymap.set('n', '<leader>d?', function() local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes) end)
-- vim.keymap.set('n', '<leader>dk', ':lua require"dap".up()<CR>zz')
-- vim.keymap.set('n', '<leader>dj', ':lua require"dap".down()<CR>zz')
-- vim.keymap.set('n', '<leader>dr', ':lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l')
-- 
-- local dap = require("dap")

--
-- Setup Golang
--

-- vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').gofmt() ]], false)
-- vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
-- vim.api.nvim_exec([[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]], false)

-- require('go').setup({})

require"fidget".setup{}
-- require("output_panel").setup()
require('telescope').setup({})

-- require("nvim-lightbulb").setup({
--   autocmd = { enabled = true }
-- })
require("ibl").setup()

EOF



set nofoldenable
set hidden

function FoldBuf()
  write
  edit
  TSBufEnable highlight
endfunction

