# dotsu

Personal Arch Linux dotfiles for i3wm setup.

## What's Included

- i3 window manager + polybar + picom
- Alacritty terminal (Catppuccin Mocha theme)
- Neovim, fish/zsh/bash configs, starship prompt
- btop, zellij, mpd, rofi, greenclip
- Complete package lists (official + AUR)

## ⚠️ Warnings

- **BACKUP YOUR CONFIGS FIRST** - This will overwrite existing files
- **Arch Linux only** - Not tested on other distros
- **Review before installing** - Especially package lists and `.gitconfig`
- Package installation downloads 10GB+ data

## Installation

### 1. Backup existing configs

```bash
cp -r ~/.config ~/.config.backup
cp ~/.bashrc ~/.bashrc.backup
cp ~/.zshrc ~/.zshrc.backup
cp ~/.gitconfig ~/.gitconfig.backup
cp ~/.xinitrc ~/.xinitrc.backup
```

### 2. Clone repository

```bash
git clone https://github.com/yourusername/dotsu.git ~/dotsu
cd ~/dotsu
```

### 3. Install packages

```bash
# Official packages
sudo pacman -S --needed - < pkglist.txt

# AUR packages (requires paru or yay)
paru -S --needed - < aurlist.txt
```

### 4. Deploy configs

```bash
# Using stow (recommended)
sudo pacman -S stow
stow -t ~/.config config
stow -t ~ home

# OR manually
cp -r config/* ~/.config/
cp home/.* ~/ 2>/dev/null
```

### 5. Update git config

```bash
# Edit with your info
nano ~/.gitconfig
```

### 6. Set executable permissions

```bash
chmod +x ~/.config/polybar/launch_polybar.sh
```

### 7. Launch i3

```bash
startx
```

## Removal

```bash
# Restore backups
rm -rf ~/.config && mv ~/.config.backup ~/.config
mv ~/.bashrc.backup ~/.bashrc
mv ~/.zshrc.backup ~/.zshrc
mv ~/.gitconfig.backup ~/.gitconfig
mv ~/.xinitrc.backup ~/.xinitrc
```

## Update Package Lists

```bash
pacman -Qqe | grep -v "$(pacman -Qqm)" > ~/dotsu/pkglist.txt
pacman -Qqm > ~/dotsu/aurlist.txt
```
