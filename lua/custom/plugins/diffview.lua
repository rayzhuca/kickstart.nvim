-- Review Git changes and file history in a dedicated tab.
vim.pack.add { 'https://github.com/sindrets/diffview.nvim' }

require('diffview').setup { use_icons = vim.g.have_nerd_font }

require('which-key').add { { '<leader>g', group = '[G]it' } }

vim.keymap.set('n', '<leader>gd', '<cmd>DiffviewOpen<CR>', { desc = '[G]it [D]iff' })
vim.keymap.set('n', '<leader>gs', '<cmd>DiffviewOpen --cached<CR>', { desc = '[G]it [S]taged diff' })
vim.keymap.set('n', '<leader>gh', '<cmd>DiffviewFileHistory %<CR>', { desc = '[G]it file [H]istory' })
vim.keymap.set('n', '<leader>gH', '<cmd>DiffviewFileHistory<CR>', { desc = '[G]it repository [H]istory' })
vim.keymap.set('n', '<leader>gq', '<cmd>DiffviewClose<CR>', { desc = '[G]it diff [Q]uit' })
