local opts = {}

function opts.init()
  -- vim / neovim basic options
  vim.opt.autoread = true -- Automatically read a file that was modified outside of neovim
  vim.opt.autowrite = true -- Automatically write a file when it was changed
  vim.opt.encoding = 'UTF-8'
  vim.opt.number = true -- Display line number on left column
  vim.opt.tabstop = 2 -- Next lines define number of tab spaces
  vim.opt.shiftwidth = 2
  vim.opt.relativenumber = true -- Display relative line numbers since I can't count
  vim.opt.mouse = 'a' -- Activate mouse support in every modes
  vim.opt.list = true -- Display symbols like tabs, spaces, line breaks etc
  vim.opt.signcolumn = 'yes' -- Display sign columns for LSP
  vim.opt.wrap = false -- No display of one line on multiple lines when too it's too long
  vim.opt.splitright = true -- Focus right window when vertical split
  vim.opt.splitbelow = true -- Focus bottom window when horizontal split
  vim.opt.confirm = true -- Ask permission when closing unsaved buffer/file
  vim.opt.expandtab = true -- Use spaces for tabs instead of tab character
  vim.opt.smartindent = true -- Auto indent
  vim.opt.winbar = '' -- Disable winbar
  vim.opt.fillchars:append({ eob = ' ' }) -- remove the ~ from end of buffer
end

return opts
