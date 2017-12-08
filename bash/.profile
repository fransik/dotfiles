#
# ~/.profile
#

# Autostart X
#if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
#  exec startx
#fi

# GNOME Keyring
if [ -n "$DESKTOP_SESSION" ]; then
  eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
  export SSH_AUTH_SOCK
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
  export PATH="$HOME/bin:$PATH"
fi

# include node modules in PATH
export npm_config_prefix="$HOME/.node_modules"
if [ -d "$HOME/.node_modules/bin" ]; then
  export PATH="$HOME/.node_modules/bin:$PATH"
fi

# vim!
export EDITOR=vim
