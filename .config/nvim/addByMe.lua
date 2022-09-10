-- keymaps.lua

keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<Esc>:w<CR>a', {})

-- options.lua
relativenumber = true,
wrap = true

-- fold 
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- plugins.lua
-- use "lunarvim/darkplus.nvim"
  use { 'lalitmee/cobalt2.nvim', requires = 'tjdevries/colorbuddy.nvim' }
  use { 'iamcco/markdown-preview.nvim', ft = 'markdown', run = 'cd app && yarn install', cmd = {'MarkdownPreview'} }
  use "ap/vim-css-color"
  
-- colorscheme.lua

local cobalt2 = require('colorbuddy').colorscheme('cobalt2')

vim.cmd [[
try
  colorscheme cobalt2
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

-- Set vim bg color same as Terminal bg color
vim.cmd [[
  silent! colorscheme snow
  hi Normal guibg=None
]]


