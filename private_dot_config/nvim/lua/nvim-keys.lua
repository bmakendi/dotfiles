local keys = {}

function keys.init()
  -- Basic Keybinds
  -- Save buffer
  vim.keymap.set('n', '<C-s>', '<cmd>:w<cr>', { desc = 'Save file', silent = true })
  -- Disable arrows in normal mode
  vim.keymap.set('n', '<up>', '<nop>', { silent = true })
  vim.keymap.set('n', '<down>', '<nop>', { silent = true })
  vim.keymap.set('n', '<left>', '<nop>', { silent = true })
  vim.keymap.set('n', '<right>', '<nop>', { silent = true })

  -- Disable macros
  vim.keymap.set('n', 'q', '<nop>', { silent = true })
  vim.keymap.set({ 'n', 'i' }, '<C-c>', '<cmd>noh<cr><esc>', { desc = 'Escape and clear hlsearch', silent = true })

  -- Add capitalized JK for faster movement
  vim.keymap.set('n', 'J', '5j')
  vim.keymap.set('n', 'K', '5k')

  -- Window Management
  vim.keymap.set('n', '<leader>wd', '<C-W>c', { desc = 'Delete window', silent = true })
  vim.keymap.set('n', '<leader>ws', '<C-W>s', { desc = 'Split below', silent = true })
  vim.keymap.set('n', '<leader>wv', '<C-W>v', { desc = 'Split to the right', silent = true })
  vim.keymap.set('n', '<C-l>', '<C-W>l', { desc = 'Go to next window', silent = true })
  vim.keymap.set('n', '<C-h>', '<C-W>h', { desc = 'Go to previous window', silent = true })
  vim.keymap.set('n', '<C-j>', '<C-W>j', { desc = 'Go to lower window', silent = true })
  vim.keymap.set('n', '<C-k>', '<C-W>k', { desc = 'Go to upper window', silent = true })

  -- Tab Management
  vim.keymap.set('n', '<leader>tt', '<cmd>tabnew<cr>', { desc = 'Open new tab', silent = true })
  vim.keymap.set('n', '<leader>td', '<cmd>tabclose<cr>', { desc = 'Close current tab', silent = true })
  vim.keymap.set('n', '<S-h>', '<cmd>tabprevious<cr>', { desc = 'Go to previous tab', silent = true })
  vim.keymap.set('n', '<S-l>', '<cmd>tabnext<cr>', { desc = 'Go to next tab', silent = true })

  -- Resize windows
  vim.keymap.set('n', '<S-Up>', '<CMD>resize +2<CR>', { desc = 'Increase window height', silent = true })
  vim.keymap.set('n', '<S-Down>', '<CMD>resize -2<CR>', { desc = 'Decrease window height', silent = true })
  vim.keymap.set('n', '<S-Left>', '<CMD>vertical resize -2<CR>', { desc = 'Decrease window width', silent = true })
  vim.keymap.set('n', '<S-Right>', '<CMD>vertical resize +2<CR>', { desc = 'Increase window width', silent = true })

  -- Other
  -- Line management
  vim.keymap.set('v', 'J', ":move '>+1<CR>gv=gv", { desc = 'Move line down', silent = true })
  vim.keymap.set('v', 'K', ":move '<-2<CR>gv=gv", { desc = 'Move line up', silent = true })
end

return keys
