vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2

-- Set config from Packages
vim.g.colors_name = { require('colorbuddy').colorscheme('cobalt2') }

-- Set vim bg color same as Terminal bg color
vim.o.termguicolors = true
    vim.cmd [[
        silent! colorscheme snow
        hi Normal guibg=None
    ]]
