" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-index", "merlin"]
let s:opam_available_tools = []
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if isdirectory(s:opam_share_dir . "/" . tool)
    call add(s:opam_available_tools, tool)
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line

set nocompatible
filetype off
set rtp+=~/.vim_config/bundle/Vundle.vim
call vundle#begin('~/.vim_config/bundle')
source ~/.vim_config/rc/plugins/vundle.vim
call vundle#end()
filetype plugin indent on

source ~/.vim_config/rc/plugins/agda-vim.vim
source ~/.vim_config/rc/haskell.vim
source ~/.vim_config/rc/keybindings.vim
source ~/.vim_config/rc/ocaml.vim
source ~/.vim_config/rc/statusline.vim
source ~/.vim_config/rc/plugins/ale.vim
source ~/.vim_config/rc/plugins/cmake4vim.vim
source ~/.vim_config/rc/plugins/coqtail.vim
source ~/.vim_config/rc/plugins/cpp-modern.vim
source ~/.vim_config/rc/plugins/nerdtree.vim
source ~/.vim_config/rc/plugins/vim-airline.vim
source ~/.vim_config/rc/plugins/vim-commentary.vim
source ~/.vim_config/rc/plugins/vim-localvimrc.vim
source ~/.vim_config/rc/plugins/latex-unicoder.vim

set showcmd
set clipboard=unnamed
set hls

set mouse=a
" noremap <ScrollWheelDown> <c-e>
" noremap <ScrollWheelUp> <c-y>

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
au BufWritePre * :call TrimWhitespace()

set noexpandtab
