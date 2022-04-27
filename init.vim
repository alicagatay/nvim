"
"
"Installing the required plugins with vim-plug
"
"
call plug#begin()
"Plugin for the language server client
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
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
nnoremap <leader>gv <cmd>GV<cr>



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

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)


EOF


lua << EOF
  require("flutter-tools").setup{} -- use defaults
EOF



"
"
"LSP AutoCompletion
"
"


" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>




" auto-formatting for different file types
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.java lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.html lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.css lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.md lua vim.lsp.buf.formatting_sync(nil, 100)
lua << EOF

vim.o.completeopt = "menuone,noselect"

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = false;

  source = {
    path = true;
    buffer = true;
    calc = true;
    vsnip = true;
    nvim_lsp = true;
    nvim_lua = true;
    spell = true;
    tags = true;
    snippets_nvim = true;
    treesitter = true;
  };
}
local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn.call("vsnip#available", {1}) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    -- If <S-Tab> is not working in your terminal, change it to <C-h>
    return t "<S-Tab>"
  end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

EOF
