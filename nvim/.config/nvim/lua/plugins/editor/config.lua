local config = {}

function config.nvim_treesitter()
    require'nvim-treesitter.configs'.setup {
        ensure_installed = {
            "lua", "python", "yaml", "json", "python", "javascript"
        },
        highlight = {enable = true},
    }
end

return config
