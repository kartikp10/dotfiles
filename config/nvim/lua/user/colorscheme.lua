vim.g.gruvbox_material_foreground = "material"
vim.g.gruvbox_material_background = "medium"

vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

vim.cmd [[
try
  let g:everforest_background = 'dark'
  colorscheme nightfox 
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
