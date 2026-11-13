typeset -U path

export EDITOR=vim

if [[ "$OSTYPE" == darwin* ]]; then
	export LIMA_INSTANCE=devbox
	export LIMA_WORKDIR=/home/frans
	export HOMEBREW_NO_UPGRADE_AUTO_UPDATES_CASKS=1
else
	umask 022
	export XDG_CONFIG_HOME="$HOME/.config"
	export NVM_DIR="$XDG_CONFIG_HOME/nvm"
	export NVM_SYMLINK_CURRENT=true
	path=("$HOME/.local/bin" "$NVM_DIR/current/bin" $path)
fi
