# QWERkey Keyboard Layout

QWERkey is a _modal_ keyboard layout for X11, optimized for staying on
or very near the home row.  It is suited for programming (using lots
of symbols easily), particularly with Emacs and Vim.  It is even tuned
for navigating a web browser with minimal finger movement.  Most of
this is accomplished by adding a new, carefully placed modifier key
(referred to as `Q-`).

QWERkey deviates from QWERTY only where necessary.  It is fairly easy
to pick up, and enables you to hop onto someone else's QWERTY keyboard
and still feel not completely lost.


## "Key" Features

* Minimal deviation from QWERTY

* Two new easy-reach modes (`Q-` and `Q-S-`)

* Minimal reaching for almost any key

* Tapifier (modifier if held, normal if tapped) keys via xcape

* Peripheral keys (arrows, PgUp/PgDn, Home/End) are reachable

* Simple `xmodmap` based config -- easy to customize

* Tuned for symbol key frequency and mnemonics (`Q-s` → `semicolon`),
  yet standard `!@#$%^&*` remain intact

* Symmetric left and right layout for modifiers Ctrl, Meta/Alt, Shift
  (though Super is left-only and QRK is right-only)

* Considerations for shared keys with tiling window manager (i3)

* New key chords combos are comfortable

* Elimination of traditional far-reach right-side keys (Enter,
  Control_R, backslash/bar)

* Even the number key row can be eliminated (with some practice)

* Includes cheat sheet and printable stickers

* Easier learning curve: most original keys are still there when you
  brainfart

* Compose key for special characters

* Comfortable new placement of Enter (two of them!), Backspace,
  Control, and right-Shift!


## Design Details

I think I'd prefer mnemonics for all symbols -- imagine `Q-b → !`
(_bang_), and `Q-e → =` (_equals_).  But we're just too dang used to
`!@#$%^&*` up top.  So we'll just stick with those.

Xorg is not capable of adding more than one additional modifier (at
least not without getting into advanced `setxkbmap` setup).  So we're
stuck with simply using `Mode_switch` for the symbols made available
by the _QRK_ key.  However, you can feasibly use `Q` and `S` together
with right-pinky-and-ring to make another modifier.

Xorg does not recognize `C-Q-z`, `C-Q-x`, or `C-Q-q` as an actual key
press on my laptop keyboard.  This is really lame.  However, I do see
those combos working on a USB plug-in keyboard.  Maybe it's just my
laptop that has trouble.

I think it's too hard to make high-row numeric keys go away for a `S-Q-`
sequence near the home rows. Chords in browsers (`M-1`) and in Emacs
(`C-20 C-n` for _down 20 lines_) get interrupted by reaching for extra
modifiers mid-command.

Right-Shift still sucks to reach for.  I considered making its left
sibling a better Shift, but that would make `Q-` reachings too awkward.


## Getting Used To It

You're used to some keys requiring no modifier:


## Debugging

Use `xev` to see what keys are being pressed.
