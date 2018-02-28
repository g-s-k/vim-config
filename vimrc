" text formatting
filetype indent on
filetype plugin on
syntax on
set number
set tabstop=2
set shiftwidth=2
set expandtab

" filetype-specific config
autocmd BufEnter *.m    compiler mlint
autocmd BufEnter *.m    cd %:p:h

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

