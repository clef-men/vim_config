set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'

" Plugin 'jiangmiao/auto-pairs'

Plugin 'embear/vim-localvimrc'

Plugin 'joom/latex-unicoder.vim'

Plugin 'preservim/nerdtree'

" Plugin 'pboettch/vim-cmake-syntax'
" Plugin 'ilyachur/cmake4vim'

" Plugin 'bfrg/vim-cpp-modern'
" Plugin 'ycm-core/YouCompleteMe'
" Plugin 'dense-analysis/ale'

Plugin 'neovimhaskell/haskell-vim'

Plugin 'whonore/Coqtail'
Plugin 'derekelkins/agda-vim'

Plugin 'lervag/vimtex'

call vundle#end()
filetype plugin indent on
