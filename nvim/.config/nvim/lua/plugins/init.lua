local uiconf = require('plugins.ui.config')
local editorconf = require('plugins.editor.config')

return require('packer').startup(function()

  use 'wbthomason/packer.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = editorconf.nvim_treesitter }
  
  -- UI
  use { 'projekt0n/github-nvim-theme', opt = false, config = uiconf.github }
  use { 'kyazdani42/nvim-tree.lua', config = uiconf.nvim_tree }
  use { 'kyazdani42/nvim-web-devicons' }
  use { 'hoob3rt/lualine.nvim', config = uiconf.lualine }
  use { 'folke/twilight.nvim', config = uiconf.twilight }

  -- Lua dev
  use { 'tjdevries/nlua.nvim' }

  -- Vim god
  use { 'tpope/vim-fugitive' }
  use { 'tpope/vim-commentary' }
  use { 'tpope/vim-surround' }

  -- Editor
  use { 'junegunn/vim-easy-align' }
  use { 'easymotion/vim-easymotion' }
	
end)
