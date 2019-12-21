#!/usr/bin/env sh

# Source xprofile file to automatically start applications
[ -f "$HOME/.xprofile" ] && . "$HOME/.xprofile"

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?* ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

while :; do
  dwm
done
