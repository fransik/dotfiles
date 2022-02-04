# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

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

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
    add_path "$HOME/.local/bin"
fi

# composer
if [ -d "$HOME/.config/composer/vendor/bin" ]; then
    add_path "$HOME/.config/composer/vendor/bin"
fi

unset -f add_path
