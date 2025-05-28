-- load plugins
local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug 'github/copilot.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug('ms-jpq/chadtree', {branch = 'chad', ['do'] = 'python3 -m chadtree deps'})
Plug 'ryanoasis/vim-devicons'
vim.call('plug#end')

-- set line numbers
vim.opt.number = true

-- start chadtree
require('chadtree')
vim.cmd.CHADopen('--nofocus')

-- set airline theme
vim.g.airline_theme = 'base16_classic_dark'

-- make comments italic and grey
vim.api.nvim_set_hl(0, 'Comment', { italic=true, fg='#7c7c7c' })

-- make :hoff into a command
vim.cmd('cnoreabbrev hoff nohlsearch')

-- set nerd font
vim.g.have_nerd_font = true
