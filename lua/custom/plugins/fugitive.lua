vim.pack.add { 'https://github.com/tpope/vim-fugitive' }

-- vim.api.nvim_create_autocmd("CmdlineChanged", {
--   callback = function()
--     -- Only react to Ex commands (:)
--     if vim.fn.getcmdtype() ~= ":" then
--       return
--     end
--
--     local cmd = vim.fn.getcmdline()
--
--     if vim.startswith(cmd, "Git") then
-- 	  vim.cmd("tab" + cmd)
--     end
--   end,
-- })

vim.keymap.set("c", "<CR>", function()
  if vim.fn.getcmdtype() ~= ":" then
    return "<CR>"
  end

  local cmd = vim.fn.getcmdline()

  if vim.startswith(cmd, "Git") then
    -- <C-U> clears command prompt, so it doesn't execute both "Git whatever" and "tab Git whatever"
    return "<C-U>tab " .. cmd .. "<CR>"
  end

  return "<CR>"
end, { expr = true })
