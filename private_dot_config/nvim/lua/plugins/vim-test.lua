return {
  'vim-test/vim-test',
  dependencies = {
    'preservim/vimux',
  },
  vim.keymap.set('n', '<leader>t', '<CMD>TestNearest<CR>', { desc = 'Run test nearest to the cursor' }),
  vim.keymap.set('n', '<leader>T', '<CMD>TestFile<CR>', { desc = 'Run all tests in current file' }),
  vim.keymap.set('n', '<leader>a', '<CMD>TestSuite<CR>', { desc = 'Run the whole test suite' }),
  vim.keymap.set('n', '<leader>l', '<CMD>TestLast<CR>', { desc = 'Run the last test' }),
  vim.keymap.set('n', '<leader>g', '<CMD>TestVisit<CR>', { desc = 'Visit test file from which tests were last ran' }),
  vim.cmd("let test#strategy = 'vimux'"),
}
