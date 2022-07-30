vim.g.gruvbox_material_foreground = "material"
vim.g.gruvbox_material_background = "medium"
vim.cmd [[
try
  colorscheme gruvbox-material
  set background=dark
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
--require('onedark').setup  {
    ---- Main options --
    --style = 'dark', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    --transparent = false,  -- Show/hide background
    --term_colors = true, -- Change terminal color as per the selected theme style
    --ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    --cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
    ---- toggle theme style ---
    --toggle_style_key = '<leader>ts', -- Default keybinding to toggle
    --toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    ---- Change code style ---
    ---- Options are italic, bold, underline, none
    ---- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
    --code_style = {
      ----comments = 'italic',
      ----keywords = 'none',
      ----functions = 'none',
      ----strings = 'none',
      ----variables = 'none'
    --},

    ---- Custom Highlights --
    --colors = {}, -- Override default colors
    --highlights = {}, -- Override highlight groups

    ---- Plugins Config --
    --diagnostics = {
      ----darker = true, -- darker colors for diagnostic
      ----undercurl = true,   -- use undercurl instead of underline for diagnostics
      ----background = true,    -- use background color for virtual text
    --},
--}

--require('onedark').load()

-- Default options
--require('nightfox').setup({
  --options = {
    ---- Compiled file's destination location
    --compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    --compile_file_suffix = "_compiled", -- Compiled file suffix
    --transparent = false,    -- Disable setting background
    --terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    --dim_inactive = true,   -- Non focused panes set to alternative background
    --styles = {              -- Style to be applied to different syntax groups
      --comments = "italic",    -- Value is any valid attr-list value `:help attr-list`
      --conditionals = "NONE",
      --constants = "NONE",
      --functions = "NONE",
      --keywords = "NONE",
      --numbers = "NONE",
      --operators = "bold",
      --strings = "NONE",
      --types = "italic,bold",
      --variables = "NONE",
    --},
    --inverse = {             -- Inverse highlight for different types
      --match_paren = false,
      --visual = false,
      --search = false,
    --},
    --modules = {             -- List of various plugins and additional options
      ---- ...
    --},
  --}
--})

--vim.g.gruvbox_baby_background_color = "medium"
--vim.g.gruvbox_baby_function_style = "NONE"
--vim.g.gruvbox_baby_keyword_style = "italic"

-- Enable telescope theme
--vim.g.gruvbox_baby_telescope_theme = 0

-- Example config in Lua
--require("github-theme").setup({
  --theme_style = "dimmed",
  --function_style = "italic",
  --sidebars = {"qf", "vista_kind", "terminal", "packer"},

  ---- Change the "hint" color to the "orange" color, and make the "error" color bright red
  --colors = {hint = "orange", error = "#ff0000"},

  ---- Overwrite the highlight groups
  --overrides = function(c)
    --return {
      --htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
      --DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
      ---- this will remove the highlight groups
      --TSField = {},
    --}
  --end
--})
-- setup must be called before loading
--vim.cmd("colorscheme github_*")
