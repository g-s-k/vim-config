" colorscheme
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

" text formatting
set guifont=Monospace\ 14
filetype indent on
filetype plugin on
syntax on
set number
set tabstop=4
set shiftwidth=4
set expandtab

" windows-specific config
if has('unix')
  set backupdir=/tmp
  set dir=/tmp
elseif has('win32') || has('win64')
  set backupdir=$TMP
  set dir=$TMP
endif

" make sure everything loads
packloadall
silent! helptags ALL

