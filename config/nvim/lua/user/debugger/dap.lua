vim.cmd[[
    nnoremap <silent> <Leader>dd <Cmd>lua require'dap.ext.vscode'.load_launchjs();require'dap'.continue()<CR>
    nnoremap <silent> <F8> <Cmd>lua require'dap'.step_over()<CR>
    nnoremap <silent> <F7> <Cmd>lua require'dap'.step_into()<CR>
    nnoremap <silent> <F9> <Cmd>lua require'dap'.step_out()<CR>
    nnoremap <silent> <Leader>dt <Cmd>lua require'dap'.toggle_breakpoint()<CR>
    nnoremap <silent> <Leader>de <Cmd>lua require'dap'.terminate()<CR>
    nnoremap <silent> <Leader>db <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
    nnoremap <silent> <Leader>dp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
    nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
    nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>
]]

