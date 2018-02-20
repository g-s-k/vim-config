# vim-config
my configuration for vim/gvim. uses soft linking and git submodules.

## instructions
  * Clone this repository.
  * Add a soft link at `~/.vimrc` or `$HOME/_vimrc` to the `vimrc` file.
  * Add a (directory) soft link at `~/.vim` or `$HOME/vimfiles` to the `vimfiles` folder.
  * If on a Windows platform with `$HOME` set to an undesirable location, append the contents of `sys_vimrc_append` to the system `_vimrc` file (typically located at `$VIM/_vimrc`).
  * Run `git submodule init`, then `git submodule update` in the local repository.

