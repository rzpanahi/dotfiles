#!/bin/bash

DOTFILES_DIR="$HOME/git/dotfiles"

# Clone the dotfiles repository
git clone https://github.com/rzpanhi/dotfiles.git "$DOTFILES_DIR/git"

# Run the installation script
"$DOTFILES_DIR"/scripts/install_apps.sh

# Create symbolic links
ln -sf "$DOTFILES_DIR"/.bashrc ~/.bashrc
ln -sf "$DOTFILES_DIR"/.bash_profile ~/.bash_profile
ln -sf "$DOTFILES_DIR"/.vimrc ~/.vimrc
ln -sf "$DOTFILES_DIR"/.gitconfig ~/.gitconfig
ln -sf "$DOTFILES_DIR"/nvim ~/.config/nvim/
ln -sf "$DOTFILES_DIR"/starship ~/.config/starship/

echo "Dotfiles setup complete"
