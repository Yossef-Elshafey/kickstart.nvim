vim.pack.add { 'https://github.com/Shatur/neovim-ayu' }

local ayu = require 'ayu'
vim.cmd 'colorscheme ayu-dark'
ayu.setup({
  vim.api.nvim_set_hl(0, 'TabLine', { bg = 'NONE' }),
  vim.api.nvim_set_hl(0, 'TabLineFill', { bg = 'NONE' }),
})

-- return {
--   'Shatur/neovim-ayu',
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     local colors = require 'ayu.colors'
--     colors.generate() -- Pass `true` to enable mirage
--
--     require('ayu').setup {
--       overrides = {
--         IncSearch = { fg = '#ff1800' },
--       },
--     }
--     vim.cmd 'colorscheme ayu-dark'
--     vim.cmd 'GoTransparent'
--   end,
-- }
