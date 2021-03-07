augroup gotestfile
  autocmd!
  autocmd BufEnter *.go command! -buffer -bang GoOpenTest call gotestfile#open('%:p', '<mods>', '<bang>')
augroup END
