return {
  'stevearc/conform.nvim',
  lazy = false,
  config = function()
    local conform = require('conform')

    conform.setup({
      formatters_by_ft = {
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        javascriptreact = { 'prettier' },
        typescriptreact = { 'prettier' },
        css = { 'prettier' },
        html = { 'prettier' },
        json = { 'prettier' },
        yaml = { 'prettier' },
        markdown = { 'prettier' },
        lua = { 'stylua' },
      },
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 500,
      },
    })

    vim.keymap.set({ 'n', 'v' }, '<leader>F', function()
      conform.format({
        lsp_fallback = true,
        async = true,
      })
    end, { desc = 'Format file or range (in visual mode)' })
  end,
}
