return {
  {
    'gelguy/wilder.nvim',
    keys = {
      ':',
      '/',
      '?',
    },
    dependencies = {
      'catppuccin/nvim',
    },
    config = function()
      local wilder = require('wilder')
      local mocha = require('catppuccin.palettes').get_palette('mocha')

      -- Create a highlight group for the popup menu
      local text_highlight = wilder.make_hl('WilderText', { { a = 1 }, { a = 1 }, { foreground = mocha.text } })
      local blue_highlight = wilder.make_hl('WilderBlue', { { a = 1 }, { a = 1 }, { foreground = mocha.blue } })

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
          highlights = {
            default = text_highlight,
            border = blue_highlight,
            accent = blue_highlight,
          },
          min_height = '0',
          max_height = '75%',
          border = 'rounded',
          reverse = 0,
        }))
      )
    end,
  },
}
