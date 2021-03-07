function! gotestfile#open(afile, mods, bang)
  let l:current_file = expand(a:afile)
  if l:current_file =~# '_test\.go$'
    let l:target_file = l:current_file[0 : -9] .. '.go'
  elseif l:current_file =~# '\.go$'
    let l:target_file = l:current_file[0 : -4] .. '_test.go'
  else
    echohl WarningMsg | echo 'this is not a go file' | echohl None
    return
  endif
  if filereadable(l:target_file)
    if a:mods !=# ''
      execute a:mods .. ' new' .. a:bang .. ' ' .. l:target_file
    else
      execute 'edit' .. a:bang .. ' ' .. l:target_file
    endif
  endif
endfunction
