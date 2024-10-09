return {
  'ThePrimeagen/refactoring.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    local refactoring = require('refactoring')

    refactoring.setup({
      prompt_func_return_type = {
        ts = true,
      },
      prompt_func_param_type = {
        ts = true,
      },
    })
    vim.keymap.set('x', '<leader>ef', function()
      refactoring.refactor('Extract Function')
    end)
    vim.keymap.set('x', '<leader>eF', function()
      refactoring.refactor('Extract Function To File')
    end)
    -- Extract function supports only visual mode
    vim.keymap.set('x', '<leader>ev', function()
      refactoring.refactor('Extract Variable')
    end)
    -- Extract variable supports only visual mode
    vim.keymap.set('n', '<leader>if', function()
      refactoring.refactor('Inline Function')
    end)
    -- Inline func supports only normal
    vim.keymap.set({ 'n', 'x' }, '<leader>iv', function()
      refactoring.refactor('Inline Variable')
    end)
    -- Inline var supports both normal and visual mode

    vim.keymap.set('n', '<leader>eb', function()
      refactoring.refactor('Extract Block')
    end)
    vim.keymap.set('n', '<leader>eB', function()
      refactoring.refactor('Extract Block To File')
    end)
    -- Extract block supports only normal mode
  end,
}
