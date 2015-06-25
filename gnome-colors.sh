#!/usr/bin/env bash

BG_COLOR="#FFFFDD"
FG_COLOR="#222222"
PALETTE="
  #FFFFDD:
  #008000:
  #008000:
  #B75F16:
  #777777:
  #000096:
  #000096:
  #000096:
  #777777:
  #FF0000:
  #777777:
  #838394949696:
  #660E7A:
  #6C71C4:
  #A3D7FF:
  #FFFFDD
"

PALETTE=${PALETTE//[[:space:]]/}

gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_background" --type bool false
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_colors"     --type bool false
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/palette"              --type string "$PALETTE"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/background_color"     --type string "$BG_COLOR"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/foreground_color"     --type string "$FG_COLOR"
