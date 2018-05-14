# vim-config
my configuration for vim/nvim. uses soft linking and git submodules.

## instructions
  * Clone this repository to your dotfiles folder.
  * Run `git submodule update --init` in the local repository.
  * If on *nix: run GNU `stow`. That's it. You're done.
  * Otherwise (or if that doesn't work), add a soft link to the `vimrc` file:

| | Vim | Neovim |
| --- |:---:|:---:|
| \*nix | `~/.vimrc` | `~/.config/nvim/init.vim` |
| Windows | `$HOME/_vimrc` | `%LOCALAPPDATA%\nvim\init.vim` |

  * Then add a soft link to the `vimfiles` directory. Note that on Windows, you must use a **directory** symlink.

| | Vim | Neovim |
| --- |:---:|:---:|
| \*nix | `~/.vim` | `~/.local/share/nvim/site` |
| Windows | `$HOME/vimfiles` | `%LOCALAPPDATA%\nvim\site` |

  * If on a Windows platform with `$HOME` set to an undesirable location, try creating environment variables (both User and System levels) with the name `HOME` and the value %USERPROFILE%. If this doesn't work, or your environment variables get changed on reboot, or something else terrible is happening, append the contents of `sys_vimrc_append` to the system `_vimrc` file (typically located at `$VIM/_vimrc`).
  * If you are on Windows and plan to use the vimtex package, ensure you have set up latexmk correctly and that SumatraPDF is on your system PATH.

