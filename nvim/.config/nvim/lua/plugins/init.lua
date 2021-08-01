local uiconf = require('plugins.ui.config')

return require('packer').startup(function()

  use 'wbthomason/packer.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  
  -- UI
  use { 'projekt0n/github-nvim-theme', opt = false, config = uiconf.github }
  use { 'hoob3rt/lualine.nvim', config = uiconf.lualine,
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Lua dev
  use { 'tjdevries/nlua.nvim' }

  -- Fugitive
  use { 'tpope/vim-fugitive' }
	
end)
