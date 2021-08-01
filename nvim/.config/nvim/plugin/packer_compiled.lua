-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/deep/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/deep/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/deep/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/deep/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/deep/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["github-nvim-theme"] = {
    config = { "\27LJ\1\2�\1\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\rsidebars\1\5\0\0\aqf\15vista_kind\rterminal\vpacker\1\0\1\18functionStyle\vitalic\nsetup\17github-theme\frequire\0" },
    loaded = true,
    path = "/home/deep/.local/share/nvim/site/pack/packer/start/github-nvim-theme"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\2�\4\0\0\6\0 \00034\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\5\0003\2\3\0002\3\0\0:\3\4\2:\2\6\0013\2\b\0003\3\a\0:\3\t\0023\3\n\0:\3\v\0022\3\3\0003\4\f\0;\4\1\0033\4\r\0003\5\14\0:\5\15\0043\5\16\0:\5\17\4;\4\2\3:\3\18\0023\3\19\0:\3\20\0023\3\21\0:\3\22\0023\3\23\0:\3\24\2:\2\25\0013\2\26\0002\3\0\0:\3\t\0022\3\0\0:\3\v\0023\3\27\0:\3\18\0023\3\28\0:\3\20\0022\3\0\0:\3\22\0022\3\0\0:\3\24\2:\2\29\0012\2\0\0:\2\30\0012\2\0\0:\2\31\1>\0\2\1G\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\fsymbols\1\0\3\tinfo\t \twarn\t \nerror\t \fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\0\2\18icons_enabled\2\ntheme\vgithub\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/deep/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nlua.nvim"] = {
    loaded = true,
    path = "/home/deep/.local/share/nvim/site/pack/packer/start/nlua.nvim"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\1\2�\5\0\0\3\0\20\0?4\0\0\0007\0\1\0'\1#\0:\1\2\0004\0\0\0007\0\1\0'\1\1\0:\1\3\0004\0\0\0007\0\1\0'\1\1\0:\1\4\0004\0\0\0007\0\1\0'\1\1\0:\1\5\0004\0\0\0007\0\1\0'\1\1\0:\1\6\0004\0\0\0007\0\1\0'\1\1\0:\1\a\0004\0\0\0007\0\1\0'\1\1\0:\1\b\0004\0\0\0007\0\1\0'\1\0\0:\1\t\0004\0\0\0007\0\1\0'\1\1\0:\1\n\0004\0\0\0007\0\1\0'\1\1\0:\1\v\0004\0\0\0007\0\1\0'\1\1\0:\1\f\0004\0\0\0007\0\1\0'\1\1\0:\1\r\0004\0\0\0007\0\1\0'\1\1\0:\1\b\0004\0\0\0007\0\1\0003\1\15\0:\1\14\0004\0\0\0007\0\1\0003\1\17\0003\2\18\0:\2\19\1:\1\16\0G\0\1\0\bgit\1\0\5\runstaged\b✚\14untracked\b★\runmerged\b≠\frenamed\b≫\vstaged\b✚\1\0\2\fdefault\b\fsymlink\b\20nvim_tree_icons\1\4\0\0\t.git\17node_modules\v.cache\21nvim_tree_ignore\30nvim_tree_lsp_diagnostics\23nvim_tree_tab_open%nvim_tree_highlight_opened_files\21nvim_tree_git_hl\28nvim_tree_hide_dotfiles\29nvim_tree_indent_markers\27nvim_tree_quit_on_open\25nvim_tree_auto_close\24nvim_tree_auto_open\24nvim_tree_gitignore\21nvim_tree_follow\20nvim_tree_width\6g\bvim\0" },
    loaded = true,
    path = "/home/deep/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\2�\1\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\a\0\0\blua\vpython\tyaml\tjson\vpython\15javascript\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/deep/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/deep/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/deep/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["twilight.nvim"] = {
    config = { "\27LJ\1\2:\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\rtwilight\frequire\0" },
    loaded = true,
    path = "/home/deep/.local/share/nvim/site/pack/packer/start/twilight.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/deep/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/deep/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/deep/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/deep/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/deep/.local/share/nvim/site/pack/packer/start/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2�\1\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\a\0\0\blua\vpython\tyaml\tjson\vpython\15javascript\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\2�\4\0\0\6\0 \00034\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\5\0003\2\3\0002\3\0\0:\3\4\2:\2\6\0013\2\b\0003\3\a\0:\3\t\0023\3\n\0:\3\v\0022\3\3\0003\4\f\0;\4\1\0033\4\r\0003\5\14\0:\5\15\0043\5\16\0:\5\17\4;\4\2\3:\3\18\0023\3\19\0:\3\20\0023\3\21\0:\3\22\0023\3\23\0:\3\24\2:\2\25\0013\2\26\0002\3\0\0:\3\t\0022\3\0\0:\3\v\0023\3\27\0:\3\18\0023\3\28\0:\3\20\0022\3\0\0:\3\22\0022\3\0\0:\3\24\2:\2\29\0012\2\0\0:\2\30\0012\2\0\0:\2\31\1>\0\2\1G\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\fsymbols\1\0\3\tinfo\t \twarn\t \nerror\t \fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\0\2\18icons_enabled\2\ntheme\vgithub\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\2�\5\0\0\3\0\20\0?4\0\0\0007\0\1\0'\1#\0:\1\2\0004\0\0\0007\0\1\0'\1\1\0:\1\3\0004\0\0\0007\0\1\0'\1\1\0:\1\4\0004\0\0\0007\0\1\0'\1\1\0:\1\5\0004\0\0\0007\0\1\0'\1\1\0:\1\6\0004\0\0\0007\0\1\0'\1\1\0:\1\a\0004\0\0\0007\0\1\0'\1\1\0:\1\b\0004\0\0\0007\0\1\0'\1\0\0:\1\t\0004\0\0\0007\0\1\0'\1\1\0:\1\n\0004\0\0\0007\0\1\0'\1\1\0:\1\v\0004\0\0\0007\0\1\0'\1\1\0:\1\f\0004\0\0\0007\0\1\0'\1\1\0:\1\r\0004\0\0\0007\0\1\0'\1\1\0:\1\b\0004\0\0\0007\0\1\0003\1\15\0:\1\14\0004\0\0\0007\0\1\0003\1\17\0003\2\18\0:\2\19\1:\1\16\0G\0\1\0\bgit\1\0\5\runstaged\b✚\14untracked\b★\runmerged\b≠\frenamed\b≫\vstaged\b✚\1\0\2\fdefault\b\fsymlink\b\20nvim_tree_icons\1\4\0\0\t.git\17node_modules\v.cache\21nvim_tree_ignore\30nvim_tree_lsp_diagnostics\23nvim_tree_tab_open%nvim_tree_highlight_opened_files\21nvim_tree_git_hl\28nvim_tree_hide_dotfiles\29nvim_tree_indent_markers\27nvim_tree_quit_on_open\25nvim_tree_auto_close\24nvim_tree_auto_open\24nvim_tree_gitignore\21nvim_tree_follow\20nvim_tree_width\6g\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: github-nvim-theme
time([[Config for github-nvim-theme]], true)
try_loadstring("\27LJ\1\2�\1\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\rsidebars\1\5\0\0\aqf\15vista_kind\rterminal\vpacker\1\0\1\18functionStyle\vitalic\nsetup\17github-theme\frequire\0", "config", "github-nvim-theme")
time([[Config for github-nvim-theme]], false)
-- Config for: twilight.nvim
time([[Config for twilight.nvim]], true)
try_loadstring("\27LJ\1\2:\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\rtwilight\frequire\0", "config", "twilight.nvim")
time([[Config for twilight.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
