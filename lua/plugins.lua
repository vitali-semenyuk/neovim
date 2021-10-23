return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- General configuration
  use 'tpope/vim-sensible'

  -- Color theme
  use 'joshdick/onedark.vim'

  -- Comments
  use 'tpope/vim-commentary'

  -- Git
  use 'tpope/vim-fugitive'
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Start screen
  use 'mhinz/vim-startify'
end)
