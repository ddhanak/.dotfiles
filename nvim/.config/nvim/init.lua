-- Map leader to space
vim.g.mapleader = ' '

local execute = vim.api.nvim_command
local fn = vim.fn

-- Defaults
require('settings')

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

require('plugins')
require('keymap')
