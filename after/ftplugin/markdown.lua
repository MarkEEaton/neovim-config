-- txt specific settings
vim.opt.wrap = true -- Wrap text
vim.opt.breakindent = true -- Match indent on line break
vim.opt.linebreak = true -- Line break on whole words

-- Spell check
vim.opt.spelllang = 'en_us'
vim.opt.spell = true

-- alter up and down arrows for better text navigation
vim.keymap.set("n", "<Down>", "gj")
vim.keymap.set("n", "<Up>", "gk")

-- also in insert mode
-- vim.keymap.set("i", "<Down>", "<C-o>gj")
-- vim.keymap.set("i", "<Up>", "<C-o>gk")

vim.cmd(':Copilot disable')
