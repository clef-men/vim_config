let g:coqtail_build_system = 'prefer-coqproject'
let g:coqtail_noimap = 1

fun! CoqToggleInfo() abort
  if 2 < winnr('$')
    execute "normal! \<c-w>l\<c-w>j\<c-w>c\<c-w>h"
  else
    execute "normal! :CoqRestorePanels\<cr>"
  endif
endfun

au FileType coq iabbrev -> →
au FileType coq noremap <leader>j :call CoqToggleInfo()<cr>

fun! CoqtailHookDefineMappings() abort
  noremap <buffer> <leader>cs :Coq Search<space>
endfun
