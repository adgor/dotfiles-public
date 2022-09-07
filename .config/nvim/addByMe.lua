-- keymaps.lua

keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<Esc>:w<CR>a', {})

-- options.lua
relativenumber = true,
wrap = true


-- plugins.lua
-- use "lunarvim/darkplus.nvim"
  use { 'lalitmee/cobalt2.nvim', requires = 'tjdevries/colorbuddy.nvim' }

  
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


