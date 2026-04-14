-- polish.lua

vim.api.nvim_create_autocmd("ModeChanged", {
  callback = function() vim.cmd "redraw" end,
})

return function()
  -- Ensure clipboard is disabled after everything is fully loaded
  vim.schedule(function()
    vim.opt.clipboard = "" -- Disable clipboard usage
    print("Clipboard has been disabled.")
  end)

  if true then return end

  -- This will run last in the setup process.
  -- This is just pure lua so anything that doesn't
  -- fit in the normal config locations above can go here
end
