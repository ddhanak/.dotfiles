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

};

bind.nvim_load_mapping(plug_map)


