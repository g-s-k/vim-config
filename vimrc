" text formatting
filetype indent on
filetype plugin on
syntax on
set number
set tabstop=2
set shiftwidth=2
set expandtab
let delimitMate_expand_cr=1

" env setup
if has('nvim-0.1')
  let g:ale_use_deprecated_neovim=1
  let g:gitgutter_sign_column_always=1
else
  set signcolumn=yes
endif

let g:gitgutter_max_signs=1500
set updatetime=500

" filetype-specific config
autocmd BufEnter *.m    compiler mlint
autocmd BufEnter *.m    cd %:p:h
autocmd BufEnter *.prj  set syntax=xml

" os-specific config
if has('unix')
  set backupdir=/tmp
  set dir=/tmp
elseif has('win32') || has('win64')
  set backupdir=$TMP
  set dir=$TMP
endif

" colorscheme
set termguicolors
set background=dark
colorscheme NeoSolarized
let g:airline_theme='base16_spacemacs'

" gui only
if has('gui_running')
  " misc options
  set guioptions-=T
  " os-specific gui-only things
  if has('gui_win32')
    set guifont=Consolas:h11
  else
    set guifont=Monospace\ 14
  endif
endif

" make sure everything loads
packloadall
silent! helptags ALL

