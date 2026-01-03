# Arch Linux Dotfiles

## Update system
```bash
sudo pacman -Syu
```

## Install packages
```bash
sudo pacman -S man git tmux ripgrep neovim tree unzip wget
```

### Hyprland
```bash
sudo pacman -S waybar hyprpaper
```

### Utilities
```bash
sudo pacman -S pavucontrol brightnessctl nwg-bar nwg-look
```

### Applications
```bash
sudo pacman -S fastfetch cava imv firefox htop
```

### Programming
```bash
sudo pacman -S rustup
```

### Nerd Font
[Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)
```bash
sudo pacman -S ttf-hack-nerd
```

### GTK
```bash
git clone https://aur.archlinux.org/catppuccin-gtk-theme-mocha.git
```

### SDDM
[Catppuccin Theme](https://github.com/catppuccin/sddm)
```bash
sudo pacman -Syu qt6-svg qt6-declarative qt5-quickcontrols2
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
