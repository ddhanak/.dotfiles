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

return config
