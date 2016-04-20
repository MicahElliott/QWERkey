#! /usr/bin/env zsh

# qwerkey — keyboard map; call from `.xinitrc` to set mappings

# http://en.wikipedia.org/wiki/Compose_key
# Useful ES codes:
# ~n -> ñ
# 'a -> á
# `a -> à
# !! -> ¡ ¿
# Useful EO codes:
# bu -> ŭ
# ^c -> ĉ (ĉĝĥĵŝ
# Useful GR codes:

# Other
# >> -> »
# .. -> …
# .^ -> ·
# -: -> ÷
# |c -> ¢

pkill xcape  # don't have multiple xcape running!

# RESET for clean slate!!
setxkbmap -layout us

xmodmap $0:h/qwerkey-left.modmap

# Do bulk of work
# xmodmap $0:h/qwerkey.modmap

# https://github.com/alols/xcape
# xcape -t 180 -e 'Control_L=Return;Shift_L=Escape;Hyper_L=Return;Mode_switch=period;Hyper_R=minus'
# xcape -t 350 -e 'Control_L=Return;Shift_L=Escape;Control_R=Return;Mode_switch=period.;Hyper_R=minus'
# xcape -t 350 -e 'Control_L=Return;Shift_L=Escape;Control_R=Return;Mode_switch=Tab;Hyper_R=minus;Alt_L=parenleft;Alt_R=parenright'
# xcape -t 350 -e 'Control_L=Return;Shift_L=Escape;Control_R=colon;Mode_switch=Tab;Hyper_R=minus;Alt_L=parenleft;Alt_R=parenright'
xcape -t 350 -e 'Control_L=Return;Shift_L=Escape;Control_R=colon;Mode_switch=Tab;Hyper_R=minus;Alt_L=parenleft;Alt_R=parenright;Super_L=bracketleft;Super_R=bracketright'
