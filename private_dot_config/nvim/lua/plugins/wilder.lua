return {
  {
    'gelguy/wilder.nvim',
    keys = {
      ':',
      '/',
      '?',
    },
    config = function()
      local wilder = require('wilder')
      -- Enable wilder when pressing :, / or ?
      wilder.setup({ modes = { ':', '/', '?' } })

      -- Enable fuzzy matching for commands and buffers
      wilder.set_option('pipeline', {
        wilder.branch(
          wilder.cmdline_pipeline({
            fuzzy = 1,
          }),
          wilder.vim_search_pipeline({
            fuzzy = 1,
          })
        ),
      })

      wilder.set_option(
        'renderer',
        wilder.popupmenu_renderer(wilder.popupmenu_palette_theme({
          highlighter = wilder.basic_highlighter(),
          min_height = '0',
          max_height = '75%',
          border = 'rounded',
          reverse = 0,
        }))
      )
    end,
  },
}
