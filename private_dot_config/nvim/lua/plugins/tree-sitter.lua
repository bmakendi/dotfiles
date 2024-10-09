return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    {
      'windwp/nvim-ts-autotag',
    },
  },
  main = 'nvim-treesitter.configs',
  opts = {
    auto_install = true,
    ensure_installed = {
      'lua',
      'javascript',
      'typescript',
      'css',
      'html',
      'go',
      'rust',
      'jsdoc',
      'json',
      'markdown',
      'sql',
      'yaml',
      'tsx',
    },
    highlight = {
      enable = true,
    },
    autotag = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
}
