let mapleader = " "

inoremap kj <esc>

" a <-> q
noremap a q
noremap q a
" A <-> Q
noremap A Q
noremap Q A
" z <-> w
noremap z w
noremap w z
" Z <-> W
noremap Z W
noremap W Z
" <c-z> <-> <c-w>
noremap <c-z> <c-w>
noremap <c-w> <c-z>
noremap <c-z>z <c-w>w
noremap <c-z>Z <c-w>W
" ww -> zz
noremap ww zz
" text objects with w, W, a
onoremap qz aw
onoremap qZ aW
onoremap iz iw
onoremap iZ iW
vnoremap qz aw
vnoremap qZ aW
vnoremap iz iw
vnoremap iZ iW

" U -> [undo]
noremap U <c-r>
" H -> 0
noremap H 0
" L -> $
noremap L $
" J -> ;
noremap J ;
" K -> ,
noremap K ,
" b/B <-> n/N
noremap b nzz
noremap B N
noremap n b
noremap N B
" ,/? -> ge/E
noremap , ge
noremap ? gE
" m <-> :
noremap m :
noremap : m
" M -> £
noremap M £
" ù -> "
noremap ù "
" = -> mg
noremap = mg
" + -> `g
noremap + `gzz
" % -> m
noremap % m
" <tab> -> `
noremap <tab> `

" <cr> -> [insert cr]
noremap <cr> i<cr><esc>

" leader bindings
noremap <leader>q :q<cr>
noremap <leader>s :w<cr>
noremap <leader>x :x<cr>
noremap <leader>Q :qall<cr>
noremap <leader>y "0y
noremap <leader>p "0p
noremap <leader>k :noh<cr>

" tab bindings
noremap <c-o> :tabnew<space>
noremap <c-j> :tabp<cr>
noremap <c-k> :tabn<cr>

" dot in visual mode
vnoremap . :norm.<cr>

" center moves
nnoremap j jzz
nnoremap k kzz
noremap G Gzz
noremap <c-d> <c-d>zz
noremap <c-u> <c-u>zz

" digits without shift
noremap à 0
noremap & 1
noremap é 2
noremap " 3
noremap ' 4
noremap ( 5
noremap § 6
noremap è 7
noremap ! 8
noremap ç 9
noremap 0 à
noremap 1 &
noremap 2 é
noremap 3 "
noremap 4 '
noremap 5 (
noremap 6 §
noremap 7 è
noremap 8 !
noremap 9 ç
noremap ùà "0
noremap ù& "1
noremap ùé "2
noremap ù" "3
noremap ù' "4
noremap ù( "5
noremap ù§ "6
noremap ùè "7
noremap ù! "8
noremap ùç "9

" terminal
noremap <leader><leader> :tab ter<cr>
tnoremap kj <c-w>N
tnoremap <c-j> <c-w>N:tabp<cr>
tnoremap <c-k> <c-w>N:tabn<cr>
