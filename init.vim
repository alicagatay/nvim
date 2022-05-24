"
"
"Installing the required plugins with vim-plug
"
"
call plug#begin()
"Plugin for the language server client
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

"Automatically close opened brackets
Plug 'jiangmiao/auto-pairs'

"Tabline plugin
Plug 'itchyny/lightline.vim'

"Traverse true previously opened files easily
Plug 'vim-scripts/mru.vim'

"Nerdtree plugin
Plug 'preservim/nerdtree'

"Plugin for git
Plug 'tpope/vim-fugitive'

"Plugin for git commit history
Plug 'junegunn/gv.vim'

"Plugin for vim-rhubarb
Plug 'tpope/vim-rhubarb'

"Show git changes on code
Plug 'airblade/vim-gitgutter'

"Onedark color theme
Plug 'joshdick/onedark.vim'

"Flutter related plugins
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'nvim-lua/plenary.nvim'
Plug 'akinsho/flutter-tools.nvim'

"JavaScript related plugins
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

"Vim markdown
Plug 'iamcco/markdown-preview.nvim'

"Neovim Telescope plugin
Plug 'nvim-telescope/telescope.nvim'

"Treesitter plugin
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Github Copilot plugin
Plug 'github/copilot.vim'

"Startify plugin
Plug 'mhinz/vim-startify'

"Plugins needed for nvim-cmp setup
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

"Plugins for a Jupyter like experience within Neovim
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'GCBallesteros/iron.nvim'
Plug 'GCBallesteros/vim-textobj-hydrogen'
Plug 'GCBallesteros/jupytext.vim'

"Lorem ipsum generator plugin.
Plug 'vim-scripts/loremipsum'

call plug#end()

"
"
"Basic Editor Related Configs
"
"
colorscheme onedark
set number relativenumber
set mouse=n
set cursorline
highlight CursorLine ctermbg=232
highlight CursorLineNr ctermfg=39 ctermbg=234
highlight LineNr ctermbg=234
highlight SyntasticWarningSign ctermfg=173
set clipboard=unnamedplus
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Enable syntax highlighting
syntax enable 

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <C-space> ?

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"
"
"Plugin Configs
"
"

"""""""""""""""""""""""""""""
" => Lightline Plugin
""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

"""""""""""""""""""""""""""""
" => Startify plugin
""""""""""""""""""""""""""""""
let g:startify_custom_header = [
            \ '__        __   _                                 _                _      ',
            \ '\ \      / /__| | ___ ___  _ __ ___   ___       | |__   __ _  ___| | __  ',
            \ ' \ \ /\ / / _ \ |/ __/ _ \| |_ ` _ \ / _ \      | |_ \ / _` |/ __| |/ /  ',
            \ '  \ V  V /  __/ | (_| (_) | | | | | |  __/      | |_) | (_| | (__|   < _ ',
            \ '   \_/\_/ \___|_|\___\___/|_| |_| |_|\___|      |_.__/ \__,_|\___|_|\_( )',
            \ '                                                                      |/ ',
            \ '    _    _ _            __                                               ',
            \ '   / \  | (_)           \ \                                              ',
            \ '  / _ \ | | |            | |                                             ',
            \ ' / ___ \| | |        _   | |                                             ',
            \ '/_/   \_\_|_|       (_)  | |                                             ',
            \ '                        /_/                                              ',
            \ ]

let g:startify_lists = [
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
            \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
            \ { 'type': 'files',     'header': ['   Files']            },
            \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ ]

let g:startify_files_number = 10
let g:startify_change_to_dir = 1
let g:startify_change_cmd = 'cd'

"""""""""""""""""""""""""""""
" => Markdown preview plugin
""""""""""""""""""""""""""""""
let g:mkdp_auto_start = 1

"""""""""""""""""""""""""""""
" => Plugin for git history
""""""""""""""""""""""""""""""
nnoremap <leader>gh <cmd>GV<cr>

"""""""""""""""""""""""""""""
" => Flutter shortcuts
""""""""""""""""""""""""""""""
nnoremap <leader>fr <cmd>FlutterRun<cr>
nnoremap <leader>frel <cmd>FlutterReload<cr>
nnoremap <leader>fres <cmd>FlutterRestart<cr>
nnoremap <leader>fq <cmd>FlutterQuit<cr>
nnoremap <leader>fd <cmd>FlutterDevices<cr>
nnoremap <leader>fe <cmd>FlutterEmulators<cr>
nnoremap <leader>df <cmd>DartFmt<cr>
nnoremap <leader>fo <cmd>FlutterOutlineToggle<cr>


"""""""""""""""""""""""""""""
" => Telescope plugin
""""""""""""""""""""""""""""""
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

"""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 1000 
let MRU_Window_Height = 20
map <leader>hh :MRU<CR>

""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=40
map <leader>nn :NERDTreeToggle<cr>
map <leader>nf :NERDTreeFind<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=1

"
"
"Filetype Configs
"
"

""""""""""""""""""""""""""""""
" => Markdown
""""""""""""""""""""""""""""""
let vim_markdown_folding_disabled = 1

"
"
"LSP Related Configuration
"
"
lua << EOF
local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)
EOF

lua << EOF
  require("flutter-tools").setup{}
EOF

"
"
"nvim-cmp setup
" uses vim snip for its snippet engine
"
set completeopt=menu,menuone,noselect
lua <<EOF
  local cmp = require'cmp'
  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    window = {
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' },
      },{
  { name = 'buffer' },
    })
  })
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' },
    }, {
      { name = 'buffer' },
    })
  })
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
EOF

"
"
" Jupyter notebook related configurations
"
"
lua << EOF
local iron = require('iron')

iron.core.set_config {
  preferred = {
    python = "ipython"
  }
}
EOF
" Jupytext
let g:jupytext_fmt = 'py'
let g:jupytext_style = 'hydrogen'

" Send cell to IronRepl and move to next cell.
" Depends on the text object defined in vim-textobj-hydrogen
" You first need to be connected to IronRepl
nmap ]x ctrih/^# %%<CR><CR>
