-- Map leader to space
vim.g.mapleader = ' '

local execute = vim.api.nvim_command
local fn = vim.fn

-- Settings
require('settings')

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- Plugins
require('plugins')

-- Keymaps
require('keymap')

vim.g.python_host_prog = '/home/frozen/.pyenv/versions/neovim2/bin/python'
vim.g.python3_host_prog = '/home/frozen/.pyenv/versions/neovim3/bin/python'
