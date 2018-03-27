# dotfiles

Managed with [GNU Stow](https://www.gnu.org/software/stow/)

```
brew install stow
```

Check this repo out to `~/dotfiles` and stow it up.

```sh
# from ~/dotfiles

# symlink vim files
stow vim

# unlink vim files
stow -D vim
```

Heavily inspired by [tomauty/dotfiles](https://github.com/tomauty/dotfiles)
