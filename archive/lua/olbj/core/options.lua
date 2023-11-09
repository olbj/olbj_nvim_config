local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = false -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- syntax enabled
opt.syntax = "enable" -- enable syntax setting

-- line wrapping
opt.wrap = true -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
-- opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.iskeyword:append("-") -- consider string-string as whole word

-- Vimtex options
vim.g.vimtex_view_method = 'skim'
vim.g.vimtex_compiler_method = 'latexmk'

-- dashboard-nvim options
  -- local home = os.getenv('HOME')
  -- local db = require('dashboard')
  -- -- macos
  -- -- db.preview_command = 'cat | lolcat -F 0.3'
  -- -- linux
  -- -- db.preview_command = 'ueberzug'
  -- --
  -- -- db.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
  -- -- db.preview_file_height = 11
  -- -- db.preview_file_width = 70
  -- db.custom_center = {
  --     {icon = '  ',
  --     desc = 'Recently latest session                  ',
  --     shortcut = 'SPC s l',
  --     action ='SessionLoad'},
  --     {icon = '  ',
  --     desc = 'Recently opened files                   ',
  --     action =  'DashboardFindHistory',
  --     shortcut = 'SPC f h'},
  --     {icon = '  ',
  --     desc = 'Find  File                              ',
  --     action = 'Telescope find_files find_command=rg,--hidden,--files',
  --     shortcut = 'SPC f f'},
  --     {icon = '  ',
  --     desc ='File Browser                            ',
  --     action =  'Telescope file_browser',
  --     shortcut = 'SPC f b'},
  --     {icon = '  ',
  --     desc = 'Find  word                              ',
  --     action = 'Telescope live_grep',
  --     shortcut = 'SPC f w'},
  --     {icon = '  ',
  --     desc = 'Open Personal dotfiles                  ',
  --     action = 'Telescope dotfiles path=' .. home ..'/.dotfiles',
  --     shortcut = 'SPC f d'},
  --   }
