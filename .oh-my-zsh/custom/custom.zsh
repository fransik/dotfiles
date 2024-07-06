export EDITOR=vim

if [[ $(uname -s) == "Darwin" ]]; then
	export HOMEBREW_NO_ANALYTICS=1
	export HOMEBREW_CASK_OPTS="--appdir=~/Applications"
	export GPG_TTY="$(tty)"
else
	umask 022
	export DOCKER_HOST="unix://$XDG_RUNTIME_DIR/docker.sock"
fi
