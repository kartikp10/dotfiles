require('dap-go').setup()
vim.cmd[[
nmap <silent> <leader>td :lua require('dap-go').debug_test()<CR>
]]
