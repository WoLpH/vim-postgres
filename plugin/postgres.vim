function! postgres#ExecuteSql()
  let conprops = matchstr(getline(1), '--\s*\zs.*')
  let cmdline = 'psql ' . conprops . ' -f %'
  execute 'w'
  execute '!' . cmdline
  redraw!
endfunction
