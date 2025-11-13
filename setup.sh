#!/usr/bin/env bash
source_dir=$(dirname $(readlink -f $0))

echo "Linking dotfiles..."

ln -sfv "$source_dir/.gnupg/gpg.conf" "$HOME/.gnupg/gpg.conf"
ln -sfv "$source_dir/.gnupg/gpg-agent.conf" "$HOME/.gnupg/gpg-agent.conf"
ln -sfv "$source_dir/.gnupg/scdaemon.conf" "$HOME/.gnupg/scdaemon.conf"
ln -sfv "$source_dir/.tmux.conf" "$HOME/.tmux.conf"
ln -sfv "$source_dir/.vimrc" "$HOME/.vimrc"
ln -sfv "$source_dir/.zshrc" "$HOME/.zshrc"
ln -sfv "$source_dir/.ssh/allowedSigners" "$HOME/.ssh/allowedSigners"

if [[ $(uname -s) == "Darwin" ]]; then
	ln -sfv "$source_dir/.zprofile" "$HOME/.zprofile"
	ln -sfv "$source_dir/.gitconfig-macos" "$HOME/.gitconfig"
	ln -sfv "$source_dir/.ssh/config" "$HOME/.ssh/config"
else
	ln -sfv "$source_dir/.bashrc" "$HOME/.bashrc"
	ln -sfv "$source_dir/.profile" "$HOME/.profile"
	ln -sfv "$source_dir/.gitconfig-linux" "$HOME/.gitconfig"
fi

echo "Done!"
