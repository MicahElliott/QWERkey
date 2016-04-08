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


# RESET for clean slate!!
setxkbmap -layout us

# Do bulk of work
xmodmap $0:h/qwerkey.modmap

# https://github.com/alols/xcape
pkill xcape  # don't have multiple xcape running!
# xcape -t 180 -e 'Control_L=Return;Shift_L=Escape;Hyper_L=Return;Mode_switch=period;Hyper_R=minus'
xcape -t 180 -e 'Control_L=Return;Shift_L=Escape;Control_R=Return;Mode_switch=period;Hyper_R=minus'
