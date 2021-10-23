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

  -- Status line
  use 'itchyny/lightline.vim'

  -- Search
  use {
    'nvim-telescope/telescope.nvim',
     requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('telescope').setup {
        defaults = {
	  mappings = {
	    i = {
	      ['<C-j>'] = 'move_selection_next',
	      ['<C-k>'] = 'move_selection_previous',
	    }
	  }
	}
      }
    end
  }

  -- Language server
  use 'neovim/nvim-lspconfig'
end)
