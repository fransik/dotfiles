export EDITOR=vim

if [[ $(uname -s) == "Darwin" ]]; then
	export SSH_AUTH_SOCK="$HOME/Library/Containers/com.bitwarden.desktop/Data/.bitwarden-ssh-agent.sock"
	export LIMA_INSTANCE=devbox
	export LIMA_WORKDIR=/home/frans
else
	umask 022
	export XDG_CONFIG_HOME="$HOME/.config"
	export NVM_DIR="$XDG_CONFIG_HOME/nvm"
	export NVM_SYMLINK_CURRENT=true
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
fi
