vim.api.nvim_exec([[
  autocmd FileType javascript setlocal tabstop=2 shiftwidth=2
  autocmd FileType python setlocal tabstop=4 shiftwidth=4
  autocmd FileType go setlocal tabstop=2 shiftwidth=2
]], false)
