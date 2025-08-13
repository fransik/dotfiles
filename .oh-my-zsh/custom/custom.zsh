export EDITOR=vim

if [[ $(uname -s) == "Darwin" ]]; then
	export HOMEBREW_NO_ANALYTICS=1
	export HOMEBREW_CASK_OPTS="--appdir=~/Applications"
	export GPG_TTY="$(tty)"
	export LIMA_INSTANCE=devbox
	export LIMA_WORKDIR=/home/frans
else
	umask 022
fi
