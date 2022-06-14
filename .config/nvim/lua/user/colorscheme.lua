cobalt2 =require('colorbuddy').colorscheme('cobalt2')

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
