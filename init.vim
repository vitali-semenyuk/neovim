call plug#begin()
    " General configuration
	Plug 'tpope/vim-sensible'

	" Color scheme
	Plug 'joshdick/onedark.vim'

	" Search
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'

	" Comments
	Plug 'tpope/vim-commentary'

	" Status line
	Plug 'itchyny/lightline.vim'

	" Git
	Plug 'lewis6991/gitsigns.nvim'

	" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
	" Language server
	" Plug 'neovim/nvim-lspconfig'
	"
call plug#end()

set number

set cursorline

" Split window below/right when creating horizontal/vertical windows
set splitbelow splitright

" Clipboard settings, always use clipboard for all delete, yank, change, put
" operation, see https://stackoverflow.com/q/30691466/6064933
if !empty(provider#clipboard#Executable())
  set clipboard+=unnamedplus
endif

" Disable creating swapfiles, see https://stackoverflow.com/q/821902/6064933
set noswapfile

" General tab settings
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " expand tab to spaces so that tabs are spaces

colorscheme onedark

let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

lua << EOF
require('gitsigns').setup()

-- local nvim_lsp = require 'lspconfig'

-- Python
-- nvim_lsp.pyright.setup {}

-- Typescript
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  -- Mappings
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
end

-- nvim_lsp.tsserver.setup {
--  on_attach = on_attach
--}
EOF

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

