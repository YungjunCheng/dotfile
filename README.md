# dotfiles

This repo contains my dotfile that I'm currently using, managed by [GNU stow](https://www.gnu.org/software/stow/).

## repo structure

```
bash/

vim/ 
```

## Getting started

```bash

# arch
sudo pacman -S stow

# gentoo
sudo emerge app-admin/stow

# debian
sudo apt install stow

# Fedora
sudo dnf install stow

# nix
nix profile install nixpkgs#stow

```

After that, you just need to run the stow command to symlink the dotfiles as you want.

```bash

git clone https://github.com/YungjunCheng/dotfiles

cd dotfiles

stow -t bash vim <XXX>

```

Machine-specific variables (toolchain paths, mirrors)
live in `~/.bashrc.local`, which is NOT tracked here.
Copy the example and edit it for your machine:

```bash

cp .bashrc.local.example ~/.bashrc.local

```

