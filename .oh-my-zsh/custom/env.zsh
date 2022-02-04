# GPG
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

# Aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
