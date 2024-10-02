#!/bin/bash

echo "Initilize collecting dotfiles"

DOTFILES_DIR="$HOME/git/dotfiles"

# Create directories if they don't exist
mkdir -p "$DOTFILES_DIR"/bash
mkdir -p "$DOTFILES_DIR"/tmux
mkdir -p "$DOTFILES_DIR"/vim
mkdir -p "$DOTFILES_DIR"/git

# Copy dotfiles
cp ~/.bashrc "$DOTFILES_DIR"/bash
cp ~/.bash_profile "$DOTFILES_DIR"/bash
cp ~/.vimrc "$DOTFILES_DIR"/vim
cp ~/.gitconfig "$DOTFILES_DIR"/git
cp -r ~/.config/nvim/ "$DOTFILES_DIR"
cp -r ~/.config/starship/ "$DOTFILES_DIR"

echo "Dotfiles collected in $DOTFILES_DIR"
