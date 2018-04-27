# vim-config
my configuration for vim/gvim. uses soft linking and git submodules.

## instructions
  * Clone this repository.
  * Add a soft link to the `vimrc` file:

| | Vim | Neovim |
| --- |:---:|:---:|
| \*nix | `~/.vimrc` | `~/.config/nvim/init.vim` |
| Windows | `$HOME/_vimrc` | `%LOCALAPPDATA%\nvim\init.vim` |

  * Add a soft link to the `vimfiles` directory. Note that on Windows, you must use a **directory** symlink.

| | Vim | Neovim |
| --- |:---:|:---:|
| \*nix | `~/.vim` | `~/.local/share/nvim/site` |
| Windows | `$HOME/vimfiles` | `%LOCALAPPDATA%\nvim\site` |

  * If on a Windows platform with `$HOME` set to an undesirable location, append the contents of `sys_vimrc_append` to the system `_vimrc` file (typically located at `$VIM/_vimrc`).
  * Run `git submodule init`, then `git submodule update` in the local repository.
  * If you are on Windows and plan to use the vimtex package, ensure you have set up latexmk correctly and that SumatraPDF is on your system PATH.

