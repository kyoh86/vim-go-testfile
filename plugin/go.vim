augroup go-testfile
  autocmd!
  autocmd BufEnter *.go command! -buffer -bang GoOpenTest call go#testfile#open('%:p', '<mods>', '<bang>')
augroup END
