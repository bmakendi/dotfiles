return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      require('nvim-treesitter.install').update({ with_sync = true })
    end,
    event = { 'BufEnter' },
    config = function()
      ---@diagnostic disable: missing-fields
      require('nvim-treesitter.configs').setup({
        ensure_installed = {
          'bash',
          'c',
          'css',
          'html',
          'javascript',
          'json',
          'lua',
          'markdown',
          'tsx',
          'typescript',
          'vimdoc',
          'yaml',
          'sql',
        },
        sync_install = false,
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
        autopairs = {
          enable = true,
        },
      })
    end,
  },
}
