-- $HOME/.vim/init/plug.vimrc
local M = {}

function M.setup()
  -- Indicate first time installation
  local packer_bootstrap = false

  -- packer.nvim configuration
  local conf = {
    display = {
      open_fn = function()
        return require("packer.util").float { border = "rounded" }
      end,
    },
  }

  -- Check if packer.nvim is installed
  -- Run PackerCompile if there are changes in this file
  local function packer_init()
    local fn = vim.fn
    local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
      packer_bootstrap = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
      }
      vim.cmd [[packadd packer.nvim]]
    end
    vim.cmd "autocmd BufWritePost plugins.lua source <afile> | PackerCompile"
  end

  -- Plugins
  local function plugins(use)
    use { "wbthomason/packer.nvim" }

    -- Colorscheme
    use "sainnhe/everforest"

  use 'ryanoasis/vim-devicons'

-- Code syntax
  use 'sheerun/vim-polyglot'

-- nvim tree
  use 'kyazdani42/nvim-web-devicons' -- for file icons
  use 'kyazdani42/nvim-tree.lua'

    -- tab line
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}
  use 'tribela/vim-transparent'
  use 'feline-nvim/feline.nvim'

--   use 'SirVer/ultisnips'
--   use 'honza/vim-snippets'
--   use 'preservim/nerdcommenter'

-- Auto pairs for '(' '[' '{'
  use 'jiangmiao/auto-pairs'

  use 'sunjon/shade.nvim'
  use 'norcalli/nvim-colorizer.lua'

  use {'neoclide/coc.nvim', branch = 'release'}

  use 'nvim-treesitter/nvim-treesitter'
  use 'SmiteshP/nvim-gps'

    -- startup screen
  use "goolord/alpha-nvim"

    -- indent blank line
  use "lukas-reineke/indent-blankline.nvim"


    -- comment code
  use 'numToStr/Comment.nvim'

    -- which key
  use "folke/which-key.nvim"

    --lsp server
  use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
  }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  } 


    if packer_bootstrap then
      print "Restart Neovim required after installation!"
      require("packer").sync()
    end
  end

  packer_init()

  local packer = require "packer"
  packer.init(conf)
  packer.startup(plugins)
end

return M
