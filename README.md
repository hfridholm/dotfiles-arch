# Arch Linux Dotfiles

## Install packages
```bash
sudo pacman -S man vi git fastfetch imv tmux ripgrep neovim
```

## Install dotfiles

**Step 1** Initialize a Git bare repository
```bash
git init --bare $HOME/dotfiles
```

**Step 2** Create alias for managing dotfiles
```bash
alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"
```

**Step 3** Hide untracked files
```bash
dotfiles config --local status.showUntrackedFiles no
```

**Step 4** Sync with remote repository
```bash
dotfiles remote add origin https://github.com/hfridholm/dotfiles-arch.git
```
