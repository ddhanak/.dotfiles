local bind = require('keymap.bind')
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
local map_args = bind.map_args
require('keymap.config')

local plug_map = {

    -- Regular stuff
    ["n|<C-l>"] = map_cr(":noh"):with_noremap():with_silent(),
    ["i|jk"] = map_cmd("<Esc>"):with_noremap(),

    -- Compe
    ["i|<C-e>"] = map_cmd([[compe#close('<C-e>')]]):with_expr():with_silent(),
    ["i|<C-Space>"] = map_cmd([[compe#complete()]]):with_expr():with_silent(),
    ["i|<Tab>"] = map_cmd("v:lua.tab_complete()"):with_expr():with_silent(),
    ["s|<Tab>"] = map_cmd("v:lua.tab_complete()"):with_expr():with_silent(),
    ["i|<S-Tab>"] = map_cmd("v:lua.s_tab_complete()"):with_expr():with_silent(),
    ["s|<S-Tab>"] = map_cmd("v:lua.s_tab_complete()"):with_expr():with_silent(),

    -- LSP (general stuff)
    ["n|<leader>li"] = map_cr("LspInfo"):with_noremap():with_silent():with_nowait(),
    ["n|<leader>lr"] = map_cr("LspRestart"):with_noremap():with_silent():with_nowait(),

    -- LSP (lspsaga)
    ["n|<C-f>"] = map_cmd(
        "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>"):with_silent()
        :with_noremap():with_nowait(),
    ["n|<C-b>"] = map_cmd(
        "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>"):with_silent()
        :with_noremap():with_nowait(),
    ["n|g["] = map_cr('Lspsaga diagnostic_jump_next'):with_noremap():with_silent(),
    ["n|g]"] = map_cr('Lspsaga diagnostic_jump_prev'):with_noremap():with_silent(),
    ["n|K"] = map_cr("Lspsaga hover_doc"):with_noremap():with_silent(),
    ["n|<leader>ca"] = map_cr("Lspsaga code_action"):with_noremap():with_silent(),
    ["v|<leader>ca"] = map_cu("Lspsaga range_code_action"):with_noremap():with_silent(),
    ["n|gd"] = map_cr('Lspsaga preview_definition'):with_noremap():with_silent(),
    ["n|gD"] = map_cmd("<cmd>lua vim.lsp.buf.implementation()<CR>"):with_noremap():with_silent(),
    ["n|gs"] = map_cr('Lspsaga signature_help'):with_noremap():with_silent(),
    ["n|gr"] = map_cr('Lspsaga rename'):with_noremap():with_silent(),
    ["n|gh"] = map_cr('Lspsaga lsp_finder'):with_noremap():with_silent(),
    ["n|gt"] = map_cmd("<cmd>lua vim.lsp.buf.type_definition()<CR>"):with_noremap():with_silent(),
    ["n|<leader>cw"] = map_cmd("<cmd>lua vim.lsp.buf.workspace_symbol()<CR>"):with_noremap():with_silent(),
    ["n|<leader>ce"] = map_cr('Lspsaga show_line_diagnostics'):with_noremap():with_silent(),

    -- Telescope
    ["n|<leader>ff"] = map_cu('Telescope find_files'):with_noremap():with_silent(),
    ["n|<leader>fg"] = map_cu('Telescope live_grep'):with_noremap():with_silent(),
    ["n|<leader>fb"] = map_cu('Telescope buffers'):with_noremap():with_silent(),
    ["n|<leader>fh"] = map_cu('Telescope help_tags'):with_noremap():with_silent(),

    -- Nvim Tree
    ["n|<C-n>"] = map_cr("NvimTreeToggle"):with_noremap():with_silent(),

    -- Vim Fugitive
    ["n|<leader>gs"] = map_cu("Git"):with_noremap():with_silent(),

    -- Easy Align
    ["n|ga"] = map_cmd("v:lua.enhance_align('nga')"):with_expr(),
    ["x|ga"] = map_cmd("v:lua.enhance_align('xga')"):with_expr(),

    -- Easymotion (normal motions)
    ["n|<leader>j"] = map_cmd("v:lua.enhance_move('lnj')"):with_expr(),
    ["n|<leader>k"] = map_cmd("v:lua.enhance_move('lnk')"):with_expr(),
    ["n|<leader>f"] = map_cmd("v:lua.enhance_move('lnf')"):with_expr(),
    ["n|<leader>w"] = map_cmd("v:lua.enhance_move('lnw')"):with_expr(),
    -- Easymotion (overwin motions)
    ["|<leader>f"] = map_cmd("v:lua.enhance_move('lf')"):with_expr(),
    ["|<leader>w"] = map_cmd("v:lua.enhance_move('lw')"):with_expr(),

    -- Markdown preview
    ["n|<F12>"] = map_cr('MarkdownPreviewToggle'):with_noremap():with_silent(),

};

bind.nvim_load_mapping(plug_map)


