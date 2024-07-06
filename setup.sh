#!/usr/bin/env bash
source_dir=$(dirname $(readlink -f $0))

echo "Linking dotfiles..."

ln -sfv "$source_dir/.bashrc" "$HOME/.bashrc"
ln -sfv "$source_dir/.gitconfig" "$HOME/.gitconfig"
ln -sfv "$source_dir/.gnupg/gpg.conf" "$HOME/.gnupg/gpg.conf"
ln -sfv "$source_dir/.gnupg/gpg-agent.conf" "$HOME/.gnupg/gpg-agent.conf"
ln -sfv "$source_dir/.profile" "$HOME/.profile"
ln -sfv "$source_dir/.tmux.conf" "$HOME/.tmux.conf"
ln -sfv "$source_dir/.vimrc" "$HOME/.vimrc"
ln -sfv "$source_dir/.zshrc" "$HOME/.zshrc"
ln -sfv "$source_dir/.zprofile" "$HOME/.zprofile"

echo "Done!"
