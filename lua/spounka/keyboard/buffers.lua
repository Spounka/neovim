-- Buffers and Tabs
vim.keymap.set({ 'n', 'v' }, '<Leader>bn', function()
  vim.cmd.enew()
end, { silent = true, desc = '[B]uffer [N]ew' })

vim.keymap.set({ 'n', 'v' }, '<Leader>bd', function()
  vim.cmd.bd()
end, { silent = true, desc = '[B]uffer [D]elete' })

vim.keymap.set({ 'n', 'v' }, '<Leader>tn', function()
  vim.cmd.tabnew()
end, { silent = true, desc = '[T]ab [N]ew' })

vim.keymap.set({ 'n', 'v' }, '<Leader>td', function()
  vim.cmd.tabclose()
end, { silent = true, desc = '[T]ab [D]elete' })

vim.keymap.set({ 'n', 'v' }, '<Leader>tl', function()
  vim.cmd.tabNext()
end, { silent = true, desc = '[T]ab Next' })

vim.keymap.set({ 'n', 'v' }, '<Leader>th', function()
  vim.cmd.tabprevious()
end, { silent = true, desc = '[T]ab Previous' })

