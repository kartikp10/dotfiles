vim.cmd [[
function! s:goyo_enter()
  set noshowmode
  lua require"lualine".hide()
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  set showmode
  lua require"lualine".hide({unhide=true})
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

]]
