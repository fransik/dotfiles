#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Autostart X
#if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
#  exec startx
#fi

# GNOME Keyring
if [ -n "$DESKTOP_SESSION" ]; then
  eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
  export SSH_AUTH_SOCK
fi
