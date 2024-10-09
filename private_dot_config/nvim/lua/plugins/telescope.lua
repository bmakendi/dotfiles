return {
  'nvim-telescope/telescope.nvim',
  version = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-file-browser.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    local telescope = require('telescope')

    -- Keymaps
    vim.keymap.set('n', '<leader>p', ':Telescope find_files<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<C-p>', ':Telescope git_files<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>f', ':Telescope live_grep<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>fd', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', { noremap = true, silent = true })

    local theme = 'dropdown'
    telescope.setup({
      pickers = {
        find_files = {
          theme = theme,
          previewer = false,
        },
        live_grep = {
          theme = false,
        },
        buffers = {
          previewer = false,
          theme = theme,
        },
      },
      extensions = {
        file_browser = {
          previewer = false,
          theme = theme,
          hijack_netrw = true,
        },
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = 'ignore_case',
        },
      },
    })
  end,
}
