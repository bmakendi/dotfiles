return {
  'numToStr/FTerm.nvim',
  main = 'FTerm',
  keys = {
    { '<C-T>', '<cmd>lua require("FTerm").toggle()<cr>', desc = 'Open terminal' },
    { '<C-T>', '<C-\\><C-n><cmd>lua require("FTerm").toggle()<cr>', desc = 'Close terminal', mode = 't' },
  },
}
