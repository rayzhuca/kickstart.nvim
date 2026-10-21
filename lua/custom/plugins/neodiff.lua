-- Load the local development checkout so edits are available after restarting Neovim.
local path = vim.fn.expand '~/Desktop/Programs/Lua/neodiff'
if vim.fn.isdirectory(path) == 0 then
  vim.notify('NeoDiff checkout not found: ' .. path, vim.log.levels.WARN)
  return
end

vim.opt.runtimepath:append(path)
require('neodiff').setup { sidebar_width = 38, stack_height = 5 }
-- Register commands immediately, including when this module is loaded after startup.
vim.cmd.runtime 'plugin/neodiff.lua'

require('which-key').add { { '<leader>g', group = '[G]it' } }
vim.keymap.set('n', '<leader>gn', '<cmd>NeoDiff<CR>', { desc = '[G]it [N]eoDiff timeline' })
