#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# bind toggle between keyboard layouts to Alt+Shift
setxkbmap -layout "se,us" -option "grp:alt_shift_toggle"

# update X font locations
xset +fp /usr/share/fonts/local
xset fp rehash

# load all settings in .Xresource file (mainly for urxvt terminal)
xrdb -merge ~/.Xresources

## DE: Awesome
# fix bug in awesome that breaks mouse events, read more: https://bugs.freedesktop.org/show_bug.cgi?id=50611#c6, https://awesome.naquadah.org/bugs/index.php?do=details&task_id=982, https://bugs.archlinux.org/task/29123
#xkbcomp $DISPLAY - | egrep -v "group . = AltGr;" | xkbcomp - $DISPLAY
#exec awesome

## DE: XFCE4
exec startxfce4

## DE: Gnome
# exec gnome-session

## DE: KDE
# exec startkde
