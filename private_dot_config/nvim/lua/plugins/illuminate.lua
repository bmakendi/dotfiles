return {
  'RRethy/vim-illuminate',
  commit = '305bf07b919ac526deb5193280379e2f8b599926',
  event = 'BufEnter',
  config = function()
    require('illuminate').configure({
      min_count_to_highlight = 2,
      delay = 1000,
      providers = {
        'lsp',
        'treesiter',
        'regex',
      },
    })
  end,
}
