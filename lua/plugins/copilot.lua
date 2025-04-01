return {
  'github/copilot.vim',
  config = function()
    -- Disable Copilot globally
    vim.g.copilot_enabled = false

    -- Enable Copilot only for specific file types
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "python", "lua", "tex" },
      callback = function()
        vim.g.copilot_enabled = true
      end,
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "*" },
      callback = function()
        local filetype = vim.bo.filetype
        if not (filetype == "python" or filetype == "lua" or filetype == "tex") then
          vim.g.copilot_enabled = false
        end
      end,
    })

    -- Optional: Customize key mappings
    vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
  end,
}
