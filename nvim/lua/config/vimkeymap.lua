vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>tt', vim.cmd.Ex, { desc = '[T]oggle source [T]ree' })

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('v', 'k', 'j', { noremap = true })
vim.keymap.set('v', 'j', 'k', { noremap = true })
vim.keymap.set('n', 'k', 'j', { noremap = true })
vim.keymap.set('n', 'j', 'k', { noremap = true })

vim.keymap.set('n', '<C-x>', function()
  print 'Hello'
end)

local _writeAllBuffers = function()
  vim.cmd 'wa'
end

local _closeAllWindows = function()
  vim.cmd 'qa'
end

vim.keymap.set('n', '<C-s>', _writeAllBuffers, { desc = 'Write all buffers' })
vim.keymap.set('n', '<C-x>', _closeAllWindows, { desc = 'Close all windows' })
