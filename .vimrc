" text formatting
filetype plugin indent on
syntax on
set number
set tabstop=2
set shiftwidth=2
set expandtab

" env setup
if v:version >= 800 || has('nvim-0.2')
  set signcolumn=yes
else
  let g:ale_use_deprecated_neovim=1
  let g:gitgutter_sign_column_always=1
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
  let delimitMate_expand_cr=1
elseif has('win32') || has('win64')
  let g:vimtex_view_general_viewer='SumatraPDF'
  set backupdir=$TMP
  set dir=$TMP
endif

" colorscheme
if v:version >= 750
  set termguicolors
end
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

