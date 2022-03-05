  -- Plugins/Packages
require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use { 'lalitmee/cobalt2.nvim', requires = 'tjdevries/colorbuddy.nvim' }
  use {
     "goolord/alpha-nvim",
     config = function ()
         local alpha = require'alpha'
         local dashboard = require'alpha.themes.dashboard'
         dashboard.section.header.val = {
             [[                               __                ]],
             [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
             [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
             [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
             [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
             [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
         }
         dashboard.section.buttons.val = {
             dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
  	     
             dashboard.button( "v", "Neovim config", ":e ~/.config/nvim/init.lua<cr>"),
             dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
     } local handle = io.popen('fortune')
         local fortune = handle:read("*a")
         handle:close()
         dashboard.section.footer.val = fortune
         dashboard.config.opts.noautocmd = true
         vim.cmd[[autocmd User AlphaReady echo 'ready']]
         alpha.setup(dashboard.config)
     end
 }

	 -- IDE
 use 'nvim-treesitter/nvim-treesitter'
 use 'neovim/nvim-lspconfig'
 use 'williamboman/nvim-lsp-installer'
 use 'neovim/nvim-lspconfig'
 use 'hrsh7th/cmp-nvim-lsp'
 use 'hrsh7th/cmp-buffer'
 use 'hrsh7th/cmp-path'
 use 'hrsh7th/cmp-cmdline'
 use 'hrsh7th/nvim-cmp'

 end)
