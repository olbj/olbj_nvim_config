-- import vimtex plugin safely
local status, vimtex = pcall(require, "vimtex")
if not status then
  return
end

-- enable vimtex
-- vimtex.setup()

vim.g.vimtex_view_method = 'skim'
vim.g.vimtex_compiler_method = 'latexmk'
