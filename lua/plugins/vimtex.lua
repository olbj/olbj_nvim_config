return {
  "lervag/vimtex",
  lazy = false, -- load immediately (important for filetype plugin to work)
  init = function()
    vim.g.vimtex_view_method = "skim" -- or "skim" on macOS
    -- vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_compiler_latexmk_engines = {
      _ = "-lualatex",
      pdftex = "-pdf",
      luatex = "-lualatex",
      lualatex = "-lualatex",
      xelatex = "-xelatex",
    }
  end,
}
