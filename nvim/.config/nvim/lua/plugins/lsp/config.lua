local config = {}

function config.nvim_lsp() require('plugins.lsp.lspconfig') end

function config.lspkind()
    require('lspkind').init({
        -- enables text annotations
        with_text = true,
        -- can be either 'default' or
        -- 'codicons' for codicon preset (requires vscode-codicons font installed)
        -- default: 'default'
        preset = 'codicons',
        -- override preset symbols
        symbol_map = {
            Text = '',
            Method = 'ƒ',
            Function = '',
            Constructor = '',
            Variable = '',
            Class = '',
            Interface = 'ﰮ',
            Module = '',
            Property = '',
            Unit = '',
            Value = '',
            Enum = '了', Keyword = '', Snippet = '﬌',
            Color = '',
            File = '',
            Folder = '',
            EnumMember = '',
            Constant = '',
            Struct = ''
        }
    })
end

function config.saga()
    vim.api.nvim_command("autocmd CursorHold * Lspsaga show_line_diagnostics")
end

function config.compe()
    require('compe').setup {
        enabled = true,
        autocomplete = true,
        debug = false,
        min_length = 1,
        preselect = 'enable',
        throttle_time = 80,
        source_timeout = 200,
        resolve_timeout = 800,
        incomplete_delay = 400,
        max_abbr_width = 100,
        max_kind_width = 100,
        max_menu_width = 100,
        documentation = true,

        source = {
            path = true,
            buffer = true,
            calc = true,
            spell = true,
            tags = true,

            orgmode = true,
            snippetSupport = true,
            nvim_lsp = true,
            nvim_lua = true,
            treesitter = true,
            tabnine = {
                max_line = 1000,
                max_num_results = 6,
                priority = 5000,
                show_prediction_strength = true,
                sort = false,
                ignore_pattern = '[(]'
            }
        }
    }
end

return config
