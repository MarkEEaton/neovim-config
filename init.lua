-- load plugins
local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug('ms-jpq/chadtree', {branch = 'chad', ['do'] = 'python3 -m chadtree deps'})
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-treesitter/nvim-treesitter' -- needed to get the right version of treesitter
Plug 'joshuavial/aider.nvim'
vim.call('plug#end')

-- configure aider.nvim 
pcall(function()
  require('aider').setup()
end)

-- aider shortcuts
vim.api.nvim_create_user_command('Ao', 'AiderOpen', {})

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

-- ─────────────────────────────────────────────────────────────
-- Terminal / split-navigation shortcuts
-- Use Ctrl-h/j/k/l to move between splits from BOTH normal and
-- terminal mode without needing <C-\><C-n> first.
-- ─────────────────────────────────────────────────────────────
local function t_map(lhs, rhs)
  vim.keymap.set('t', lhs, rhs, { noremap = true, silent = true })
end

t_map('<C-h>', [[<C-\><C-n><C-w>h]])
t_map('<C-j>', [[<C-\><C-n><C-w>j]])
t_map('<C-k>', [[<C-\><C-n><C-w>k]])
t_map('<C-l>', [[<C-\><C-n><C-w>l]])

-- Provide identical mappings in normal mode for consistency
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true })
