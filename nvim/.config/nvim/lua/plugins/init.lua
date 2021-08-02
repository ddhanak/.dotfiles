local uiconf = require('plugins.ui.config')
local editorconf = require('plugins.editor.config')
local lspconf = require('plugins.lsp.config')

return require('packer').startup(function(use)

  -- Essentials
  use 'wbthomason/packer.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = editorconf.nvim_treesitter }
  use { 'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- LSP (collection of common configurations)
  use { 'neovim/nvim-lspconfig', config = lspconf.nvim_lsp }
  -- LSP (install language servers)
  use { 'kabouzeid/nvim-lspinstall' }
  -- LSP (autocompletion)
  use { 'hrsh7th/nvim-compe', config = lspconf.compe }
  -- LSP (pictograms)
  use { 'onsails/lspkind-nvim', config = lspconf.lspkind }
  -- LSP (signature while you type)
  use { 'ray-x/lsp_signature.nvim', after = 'nvim-lspconfig' }
  -- LSP (saga)
  use { 'glepnir/lspsaga.nvim' }

  -- UI
  use { 'projekt0n/github-nvim-theme', opt = false, config = uiconf.github }
  use { 'kyazdani42/nvim-tree.lua', config = uiconf.nvim_tree }
  use { 'kyazdani42/nvim-web-devicons' }
  use { 'hoob3rt/lualine.nvim', config = uiconf.lualine }
  use { 'folke/twilight.nvim', config = uiconf.twilight }
  use { 'lewis6991/gitsigns.nvim', requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function() require('gitsigns').setup() end
  }

  -- Lua dev
  use { 'tjdevries/nlua.nvim' }

  -- Vim god
  use { 'tpope/vim-fugitive' }
  use { 'tpope/vim-commentary' }
  use { 'tpope/vim-surround' }

  -- Editor
  use { 'junegunn/vim-easy-align' }
  use { 'easymotion/vim-easymotion' }
  use { 'windwp/nvim-autopairs', after = 'nvim-lspconfig', config = lspconf.autopairs }

  -- Markdown
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

end)
