# QWERkey Keyboard Layout

QWERkey is a _modal_ keyboard layout for X11, optimized for staying on
or near the home row.  It is suited for programming (using lots
of symbols easily), particularly with Emacs and Vim.  It is even tuned
for navigating a web browser with minimal finger movement.  Most of
this is accomplished by adding a new, carefully placed modifier key
(referred to as `Q-`) at the `.` position.

QWERkey deviates from QWERTY only where necessary.  It is fairly easy
to pick up, and enables you to hop onto someone else's QWERTY keyboard
and still feel not completely lost. Many keys will no longer be used,
but they're still there when you accidentally reach for them.

![keymap diagram](https://raw.githubusercontent.com/MicahElliott/QWERkey/master/art/v7.png)

The unused slots are marked with a `µ`.

Here's a feel for how little space your fingers actually need to
cover.

![real keyboard](https://raw.githubusercontent.com/MicahElliott/QWERkey/master/art/real-keyboard.png)


## "Key" Features

* Paired symbols all in up-down pairs, most important are easiest to reach

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

* Even the number key row can be eliminated (with some practice) by
  the new `Q-S-` num-pad.

* Includes cheat sheet and printable stickers

* Easier learning curve: most original keys are still there when you
  brainfart

* Compose key for special characters

* Comfortable new placement of Enter (two of them!), Backspace,
  Control, and right-Shift!

## Installation

Install [xcape](https://github.com/alols/xcape).

If you think you'll want to tweak the layout, fork this
repo. Otherwise, just clone it.

You'll want X to enable this at startup, so put the following into
your `.xinitrc`:

    /path/to/qwerkey.zsh

If you want to integrate a tiling window manager (i3), create a
symlink to its config:

    ln -s /path/to/qwerkey.zsh ~/.i3/config

(Feel free to contribute a similar AwesomeWM or XMonad config.)

## Re-key-ing your brain and fingers

[gtypist] has some decent lessons on using symbol characters.  You'll
also want to practice getting used to the new right-shift location.


## Design Details

I think I'd prefer mnemonics for all symbols -- imagine `Q-b → !`
(_bang_), and `Q-e → =` (_equals_).  But we're just too dang used to
`!@#$%^&*` up top.  So we'll just stick with those.

Xorg is not capable of adding more than one additional modifier (at
least not without getting into advanced `setxkbmap` setup).  So we're
stuck with simply using `Mode_switch` for the symbols made available
by the _QRK_ key.  However, you can feasibly use `Q` and `S` together
with right-pinky-and-ring to make another modifier.  This is how the
num-pad is accessed.

Xorg does not recognize `C-Q-z`, `C-Q-x`, or `C-Q-q` as an actual key
press on my laptop keyboard.  This is really lame.  However, I do see
those combos working on a USB plug-in keyboard.  Maybe it's just my
laptop that has trouble.

I think it's too hard to make high-row numeric keys go away for a
`S-Q-` sequence near the home row. Chords in browsers (`M-1`) and in
Emacs (`C-20 C-n` for _down 20 lines_) feel somewhat interrupted by
reaching for extra modifiers mid-command.


## Helpful Tools

There is a Firefox add-on called
[Mouseless Browsing](https://addons.mozilla.org/en-us/firefox/addon/mouseless-browsing/)
that augments all links with a visible number. With QWERkey's numpad
you can browse from the home row without a mouse.

Use `xev` to see what keys are being pressed.  If you find some key
combos not working, make sure they register in xev's monitor.

Keyboard stickers will really help you in the early weeks in getting
through the learning curve.  Just print the PNG at the top of this
page onto "sticker paper".  Then cut them out with scissors and stick
'em on!

Tactile "keyboard bumps" (search Amazon) are very helpful for
keeping/finding your position.  I place them on left-CTL, f, j,
QRK, and BSP.
