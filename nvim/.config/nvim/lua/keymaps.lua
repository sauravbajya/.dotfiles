
-- Set <space> as the leader key
-- See `:h mapleader`
-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '


-- KEYMAPS
--
-- See `:h vim.keymap.set()`, `:h mapping`, `:h keycodes`

-- Use <Esc> to exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Map <A-j>, <A-k>, <A-h>, <A-l> to navigate between windows in any modes
vim.keymap.set({ 't', 'i' }, '<A-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set({ 't', 'i' }, '<A-j>', '<C-\\><C-n><C-w>j')
vim.keymap.set({ 't', 'i' }, '<A-k>', '<C-\\><C-n><C-w>k')
vim.keymap.set({ 't', 'i' }, '<A-l>', '<C-\\><C-n><C-w>l')
vim.keymap.set({ 'n' }, '<A-h>', '<C-w>h')
vim.keymap.set({ 'n' }, '<A-j>', '<C-w>j')
vim.keymap.set({ 'n' }, '<A-k>', '<C-w>k')
vim.keymap.set({ 'n' }, '<A-l>', '<C-w>l')


-- vim.keymap.set("n", "<leader><leader>", '<cmd>lua vim.pack.update()<CR>')


-- ~/.config/nvim-scratch/lua/keymaps.lua
local fzf = require('fzf-lua')

-- Find files in your project
vim.keymap.set('n', '<leader>ff', fzf.files, { desc = 'Fzf Files' })
-- Search for a word inside all files (requires ripgrep)
vim.keymap.set('n', '<leader>fg', fzf.live_grep, { desc = 'Fzf Grep' })
-- Search through your currently open files (buffers)
vim.keymap.set('n', '<leader>fb', fzf.buffers, { desc = 'Fzf Buffers' })
-- Search through your command history
vim.keymap.set('n', '<leader>fh', fzf.help_tags, { desc = 'Fzf Help' })

