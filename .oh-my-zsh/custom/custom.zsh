export EDITOR=vim

if [[ $(uname -s) == "Darwin" ]]; then
	export SSH_AUTH_SOCK=$HOME/Library/Containers/com.bitwarden.desktop/Data/.bitwarden-ssh-agent.sock
	export LIMA_INSTANCE=devbox
	export LIMA_WORKDIR=/home/frans
else
	umask 022
fi
