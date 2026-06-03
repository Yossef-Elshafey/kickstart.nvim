vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.termguicolors = true
vim.o.background = 'dark'
vim.opt.tabstop = 4
vim.opt.showtabline = 2
vim.opt.shiftwidth = 2
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set('n', '<C-c>', '<ESC>')
vim.keymap.set('v', '<C-c>', '<ESC>')
vim.keymap.set('i', '<C-c>', '<ESC>')
vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', '<C-l>', '!column -t<CR>')
vim.keymap.set('n', '<C-x>', ':bdelete<CR>')
vim.api.nvim_create_user_command('W', 'w', {})

local function transparent_background()
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'TabLine', { bg = 'NONE' })
  vim.api.nvim_set_hl(0, 'TabLineFill', { bg = 'NONE' })
  vim.api.nvim_set_hl(0, 'TabLineSel', { bg = 'NONE' })
end
vim.api.nvim_create_user_command('GoTransparent', transparent_background, { nargs = 0, desc = 'Set bg = none for UI' })
