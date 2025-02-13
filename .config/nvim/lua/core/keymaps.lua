-- [[ Basic Keymaps ]]
--  See `:help keymap.set()`

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
keymap.set('n', '<leader>|', '<C-w><C-v>', { desc = 'Split Window Right' })
keymap.set('n', '<leader>-', '<C-w><C-s>', { desc = 'Split Window Below' })
keymap.set('n', '<leader>wd', '<C-w><C-q>', { desc = 'Delete Window' })
keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

keymap.set('n', '<leader><tab><tab>', '<cmd>tabnew<CR>', { desc = 'New tab' })
keymap.set('n', '<leader><tab>d', '<cmd>tabclose<CR>', { desc = 'Close tab' })
keymap.set('n', '<leader><tab>l', '<cmd>tablast<CR>', { desc = 'Last tab' })
keymap.set('n', '<leader><tab>f', '<cmd>tabfirst<CR>', { desc = 'First tab' })
keymap.set('n', '<leader><tab>]', '<cmd>tabn<CR>', { desc = 'Next tab' })
keymap.set('n', '<leader><tab>[', '<cmd>tabp<CR>', { desc = 'Previous tab' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
-- vim: ts=2 sts=2 sw=2 et
