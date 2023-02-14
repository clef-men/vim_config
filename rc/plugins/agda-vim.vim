au BufNewFile,BufRead *.agda set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
au BufNewFile,BufRead *.agda noremap <leader>l :AgdaLoad<cr>
au BufNewFile,BufRead *.agda noremap <leader>c :call AgdaContext()<cr>
au BufNewFile,BufRead *.agda iabbrev -> \-
