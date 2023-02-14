let g:cmake_reload_after_save = 1
let g:cmake_compile_commands = 1
let g:cmake_compile_commands_link = '.'

au FileType c,cpp noremap <leader>c :CMake<cr>
au FileType c,cpp noremap <leader>cc :CMakeResetAndReload<cr>
au FileType c,cpp noremap <leader>b :CMakeBuild<cr>
au FileType c,cpp noremap <leader>r :execute '!./cmake-build-' . tolower(g:cmake_build_type) . '/' . g:tgt<cr>
