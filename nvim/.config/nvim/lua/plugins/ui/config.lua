local config = {}

function config.github()
    require('github-theme').setup({
        functionStyle = 'italic',
        sidebars = {'qf', 'vista_kind', 'terminal', 'packer'},
    })
end

function config.lualine()
    require('lualine').setup({
        options = {
            icons_enabled = true,
            theme = 'github',
            disabled_filetypes = {}
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch'},
            lualine_c = {
                {'filename'}, {
                    'diagnostics',
                    sources = {'nvim_lsp'},
                    symbols = {error = ' ', warn = ' ', info = ' '}
                }
            },
            lualine_x = {'encoding', 'fileformat', 'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
        extensions = {}
    })
end

function config.nvim_tree()
    vim.g.nvim_tree_width = 35
    vim.g.nvim_tree_follow = 1
    vim.g.nvim_tree_gitignore = 1
    vim.g.nvim_tree_auto_open = 1
    vim.g.nvim_tree_auto_close = 1
    vim.g.nvim_tree_quit_on_open = 1
    vim.g.nvim_tree_indent_markers = 1
    vim.g.nvim_tree_hide_dotfiles = 0
    vim.g.nvim_tree_git_hl = 1
    vim.g.nvim_tree_highlight_opened_files = 1
    vim.g.nvim_tree_tab_open = 1
    vim.g.nvim_tree_lsp_diagnostics = 1
    vim.g.nvim_tree_indent_markers = 1
    vim.g.nvim_tree_ignore = {'.git', 'node_modules', '.cache'}
    vim.g.nvim_tree_icons = {
        default = '',
        symlink = '',
        git = {
            unstaged = "✚",
            staged = "✚",
            unmerged = "≠",
            renamed = "≫",
            untracked = "★"
        }
    }
end

function config.twilight() require('twilight').setup {} end

function config.shade()
    require('shade').setup({
        overlay_opacity = 50,
        opacity_step = 1,
        keys = {
            brightness_up   = '<C-Up>',
            brightness_down = '<C-Down>',
            toggle          = '<Leader>s',
        }
    })
end

return config
