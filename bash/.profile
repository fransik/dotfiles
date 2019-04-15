#
# ~/.profile: executed by the command interpreter for login shells.
#

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

add_path() {
    if ! [[ $PATH =~ "$1" ]]; then
        PATH="$1:$PATH"
    fi
}

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    add_path "$HOME/bin"
fi

# include node modules in PATH
export NPM_CONFIG_PREFIX="$HOME/.npm-global"
if [ -d "$HOME/.npm-global/bin" ]; then
    add_path "$HOME/.npm-global/bin"
fi

# rubygems
if [ -d "$HOME/.gem" ]; then
    add_path "$(ruby -e 'print Gem.user_dir')/bin"
fi

# composer
if [ -d "$HOME/.config/composer/vendor/bin" ]; then
    add_path "$HOME/.config/composer/vendor/bin"
fi

unset -f add_path

# vim!
export EDITOR=vim
