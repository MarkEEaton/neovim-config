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

vim.cmd(':Copilot disable')
