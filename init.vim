call plug#begin()
  " Indentation
  Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

" Clipboard settings, always use clipboard for all delete, yank, change, put
" operation, see https://stackoverflow.com/q/30691466/6064933
if !empty(provider#clipboard#Executable())
  set clipboard+=unnamedplus
endif

" Disable creating swapfiles, see https://stackoverflow.com/q/821902/6064933
set noswapfile

lua << EOF
require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
}
EOF

