-- :help options
vim.opt.showmatch = true               -- show matching
vim.opt.ignorecase = true              -- case insensitive
vim.opt.hlsearch = true                -- highlight search
vim.opt.incsearch = true               -- incremental search
vim.opt.tabstop = 4                    -- number of columns occupied by a tab
vim.opt.softtabstop = 4                -- see multiple spaces as tabstops so <BS> does the right thing
vim.opt.expandtab = true               -- converts tabs to white space
vim.opt.shiftwidth = 4                 -- width for autoindents
vim.opt.autoindent = true              -- indent a new line the same amount as the line just typed
vim.opt.number = true                  -- add line numbers
vim.opt.relativenumber = true
vim.opt.cc = "120"                     -- vim.opt.an 80 column border for good coding style
vim.opt.syntax = "on"                  -- syntax highlighting
vim.opt.mouse = "a"                    -- enable mouse click
vim.opt.clipboard = "unnamedplus"      -- using system clipboard
vim.opt.cursorline = true              -- highlight current cursorline
vim.opt.ttyfast = true                 -- Speed up scrolling in Vim
vim.opt.completeopt= { "menu","menuone","noselect" } -- better autocomplete options
vim.opt.hidden = true
vim.opt.encoding = "utf-8"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.scrolloff = 8                  -- min number of lines below or above cursorline
vim.opt.ttyfast = true
vim.opt.signcolumn = "auto"

vim.cmd "filetype plugin indent on"   --allow auto-indenting depending on file type
vim.cmd "filetype plugin on"
vim.cmd "set cmdheight=2"
vim.cmd "set updatetime=300"
vim.cmd "set shortmess+=c"
