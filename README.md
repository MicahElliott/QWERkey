# QWERkey Keyboard Layout

QWERkey is a _modal_ keyboard layout for X11, optimized for staying on
or near the home row.  It is suited for programming (using lots of
symbols easily), particularly with Emacs and Vim, but is also a big
improvement for typing prose, eliminating hard-to-reach keys.  It is
even tuned for navigating a web browser with minimal finger
movement.

All of this is accomplished by a few novelties:

 * simple layout tweaks via a small _.xmodmap_ text file

 * a new, carefully placed "QRK" modifier key (referred to as `Q-`) at
   the `Caps Lock` position, which enables a symbolic mode

 * an arrangement of left-modifiers that can be pressed in
   combinations of two or three by forming a comfortable guitar-like
   barre

 * extensive use of [xcape](https://github.com/alols/xcape) for
   doubling modifier keys, greatly reducing the number of keys needed

QWERkey deviates from QWERTY only where necessary.  It is fairly easy
to pick up, and enables you to hop onto someone else's QWERTY keyboard
and still feel not completely lost. Hard-to-reach keys will no longer
be used, but they're still there when you accidentally lunge for them
(unless you physically remove them from your keyboard like I do).

Children, programmers, vision impaired, the small-handed, and anyone
suffering from RSI should give QWERkey a try.  Please provide
feedback/suggestions in a ticket.

The goal is that you never actually need to move your hand position to
reach for the mouse or Home/End/PgUp/PgDn/arrow (and maybe even
number) keys (but you're still allowed to).  It is tragic to watch a
youngster bouncing hands all around reaching for BSP et al on a
traditional keyboard.  It's even very bad for adults.

![keymap diagram](https://raw.githubusercontent.com/MicahElliott/QWERkey/master/art/qrk-left-high.jpg)

The unused slots are marked with a `µ` (what the cow says when you
poke it needlessly).

Here's a feel for how little space your fingers actually need to
cover.

![real keyboard](https://raw.githubusercontent.com/MicahElliott/QWERkey/master/art/real-keyboard.png)

NOTE: QWERkey is only for Xorg/X11.  So it's great for Linux or
PC-BSD, but not suited for other OSes like those from Apple or
Microsoft.  Please let me know if you want to work on a driver.


## "Key" Features

* Minimal deviation from QWERTY

* Two new easy-reach modes (`Q-` and `Q-S-`), both pressable with a
  single finger

* Minimal reaching for almost any key

* "Tapifier" keys (modifier if held, normal if tapped) via xcape

* Peripheral keys (arrows, PgUp/PgDn, Home/End) are reachable

* Simple `xmodmap` based config -- easy to customize

* Tuned for symbol key frequency and mnemonics (`Q-p` → `plus`),
  yet standard `!@#$%^&*` remain intact

* Symmetric left and right layout for modifiers Ctrl, Meta/Alt, Shift
  (though QRK is left- or right-only)

* Considerations for shared keys with tiling window manager (i3 or other)

* New key chords combos are comfortable

* Elimination of traditional far-reach right-side keys (Enter,
  Control_R, backslash/bar)

* Even the number key row can be eliminated (with some practice) by
  the new `Q-S-` num-pad

* Includes cheat sheet and printable stickers

* Easier learning curve than other alternative layouts: most original
  keys are still there when you brainfart

* Compose key for special characters

* Comfortable new placement of Enter, Backspace,
  Controls, and right-Shift!


## Tiling Window Managers

The diagram above shows keys (in red) for managing a TWM.  If you're
someone who cares a lot about layouts and sees value in minimizing
mouse usage, you need a TWM -- for both speed and comfort.  I like i3
for its simple textual config format and light-weightedness, but
have also had good trials with
[AwesomeWM](https://awesome.naquadah.org/) and
[XMonad](http://xmonad.org/).  A config file for i3 is included that
matches the diagram.  The layout is carefully designed so that
navigational and number keys are consistent between modes.


## Keyboards

There are a few keyboards that make using five thumb keys (space,
supers, metas) easier, through keeping the spacebar narrow (three keys
wide).

Pictured above (with the green lines) is a Japanese keyboard.  You can
find them on Amazon for $30-70.  It can be used identically to a US
keyboard, but its advantage is the narrow spacebar which gives the
thumbs less required distance to travel.  Going Japanese is totally
optional (I regularly use a US keyboard with wide spacebar and can
reach my thumb inward two keys (to SUP) without trouble.)  I've
tested a couple.  A special `japanese.modmap` will be included soon.

The Happy Hacking Keyboard released a Japanese edition that is of a
nice, small form factor.  It features
[_Topre_ keys](https://www.youtube.com/watch?v=lYsAVQLl8mQ), has good
key action, and can be found on Amazon for $70.  Expect a shipping
delay.

A real cheapo that works is the _Gear Head 89-Key Mini USB_ (find it
on Amazon).  It feels a bit clunky, but if you only have $12 to spend,
or just want to give QWERkey a whirl, go for this one for its
life-changing 3-key-wide spacebar and easy-to-pop-off-and-exchange
keys.  It's so slim and small that you can just set it right on top of
your laptop keyboard.

I'm aware of some of the ergonomic keyboards;
[here](http://xahlee.info/kbd/ergonomic_keyboards.html) is a survey.
I don't see any of these being as good as QWERKey at maintaining
a home-row position.  My fingers are not able to reach down two rows.
Furthermore, long-term use of these make it much harder for you to hop
onto a traditional keyboard.


## Installation

Install [xcape](https://github.com/alols/xcape).

If you think you'll want to tweak the layout, fork this QWERkey
repo.  Otherwise, just clone it.

You'll want X to enable QWERkey at start-up, so put the following into
your `.xinitrc`:

    /path/to/qwerkey.zsh

If you want to integrate a tiling window manager (e.g., i3), create a
symlink to its config:

    ln -s /path/to/qwerkey/i3config ~/.i3/config

(Feel free to contribute a similar AwesomeWM or XMonad config.)


## Differences from QWERTY

You'll need to re-key your brain and fingers a bit.

For prose, very little has changed from QWERTY: you mostly just need
to stop reaching so far.  `{}:` have been moved to `QRK` access.
`/?` are moved up a row.  For this, you get a much better `RET`,
`SHF`, and `BSP`.

For coding, most symbols are now accessible consistently through the
`QRK` modifier.  All combinations of `CTL`, `SHF`, `META/ALT`, and
`QRK` are fully accessible through the comfort of your left hand.  And
the symbols have been carefully placed for memory and ease of access.


## Training

[gtypist](https://github.com/alexei-matveev/gtypist) is a cute and
simple little console-based typing tutor.  It has several standard
lessons, plus some limited lessons on using symbol characters.  You'll
probably want to practice normal typing lessons to get used to the new
right-shift, enter, etc, locations.

There are some symbol-specific lessons included here that you can use
to acclimate yourself to all of QWERkey.  Fire up GTypist on a lesson
with:

    gtypist practice/lesson1.typ

If you wish to create/compile your own lessons (please consider
contributing them here), download gtypist for a compiling tool it
provides.  Inspect QWERkey's `lesson1.ktouch` file to learn the very
simple lesson format.

    git clone https://github.com/alexei-matveev/gtypist
    cd gtypist/tools
    perl ktouchOLD2typ.pl /path/to/your/new-lesson.ktouch


## Tips & Tools

Rather than the clever `C-h`, get used to `BSP` again -- it's in a
decent spot now (though still the farthest QWERkey to reach for!).
Years ago, I fell in love with `C-h` for backspace in terminals and
Vim, but it was maddening not having it outside the editor, popping up
history or who-knows-what.  Now it's reachable, and works everywhere.

Key chords are hard enough to get right with one hand.  Don't spread
them across two.  Any sequence should be attainable with a single
hand -- even `C-Q-S-M-foo`.  The `foo` might be either hand, but the
modifiers are all left (in this case).

It may help to think of `QRK`/`Q-` as a _Symbol_ key.  It couldn't be
called the `S-` key since that's already overloaded by _Shift_ and _Super_.

Use the right-`CTL` for left keys.  E.g., in Emacs, save with
right-`CTL` and `x s` rather than do the whole thing left-handed.

Prefer `C-u C-u C-n` to move down 16 lines, rather than `C-16 C-n`.
Or if you need to use numbers, get used to holding `Q-S-` with just
the left pinky.  You can even pinky-barre the first part of `C-Q-S-8
C-f` and then smoothly lift in the single `C-f`.

There is a Firefox add-on called
[Mouseless Browsing](https://addons.mozilla.org/en-us/firefox/addon/mouseless-browsing/)
that augments all links with a visible number. With QWERkey's numpad
you can browse from the home row without a mouse.

Use `xev` to see what keys are being pressed.  If you find some key
combos not working, make sure they register as a _KeyPress_ event in
xev's monitor.

Keyboard stickers will really help you in the early weeks in getting
through the learning curve.  Just click on and print the PNG at the
top of this page onto "sticker paper".  Then cut them out with
scissors and stick 'em on!

Tactile "keyboard bumps" (search Amazon) are very helpful for
keeping/finding your position.  I place them on left-CTL, f, j,
QRK, and BSP.

[Conkeror](http://conkeror.org/) is an Emacs-like web browser that
eschews the mouse.  I prefer a tweaked Firefox, but some anti-mouse
zealots swear by it.


## Design Details and Philosophy (for the curious)

I'd prefer mnemonics for all symbols -- imagine `Q-b → !` (_bang_),
and `Q-e → =` (_equals_).  But we're just too dang used to `!@#$%^&*`
up top.  So just stick with those.

Xorg is not capable of adding more than one additional modifier (at
least not without getting into advanced `setxkbmap` setup).  So we're
stuck with simply using `Mode_switch` for the symbols made available
by the single _QRK_ key.  However, you can feasibly use `Q` and `S`
together with just the left pinky (or with left-pinky-and-ring) to
make another modifier.  This is how the num-pad (purple) is accessed.
Anyway, I don't see a good place on the right side for another _QRK_
key.

Choosing a _QRK_ location is quite tricky, since it needs to be a key
that will not be followed very quickly by another; e.g., `.` is tricky
since you'll commonly follow it quickly with a `spacebar` before
removing your finger from the `.`.

Xorg does not recognize `C-Q-z`, `C-Q-x`, or `C-Q-q` as an actual key
press on my laptop keyboard.  This is really lame.  However, I do see
those combos working on other USB plug-in keyboards.  Hopefully it's
just my laptop that has trouble.

Even though high-row numeric keys (especially 5, 6, and 7) are rather
hard to reach, I think it's too hard to make them go away for a `S-Q-`
num-pad sequence near the home row.  Chords in browsers (`M-3` for
_third tab_) and in Emacs (`C-20 C-n` for _down 20 lines_) feel
interrupted by reaching for extra modifiers mid-command.

The _ASDZ_ arrows seem weird at first, but they're like _WASD_.  I
considered _HJKL_ (vi-like), but this wrecked the high-low pairing
layout.

The num-pad needed to be on the right side for it to be accessible.
You're chording, say, `Q-S-o` with the left hand to make a `3`.  If
the `o` etc. were on the left side, this would be too hard.  Since the
num-pad wound up on the right, the WM's numbers also needed to be
there.  This forced the arrow keys to the left side.  And the critical
symbols (`<>{}=;|.~+`) needed to be on the right side, anyway.

The num-pad follows the telephone layout rather than tradition.  Some
research suggests that phone is more intuitive/natural.

### Mnemonics

`~` → _ocean_: Think of an "ocean wave".  This is an odd one, but it
does help to think of a symbol as a thing, rather than an action.
I.e., I tried mentally mapping _pipe_ and _or(tho)_ for pipe-bar and
or-bar, but _ocean_ was the easiest (probably only) way to remember
`~`.

`=` _eek_:

### Reaching for things

`Q-End` is a farther reach than `Q-PgDn`.  This makes sense because it
takes you farther down the page.  The same goes for `M-Q->`
(end-of-buffer) in Emacs taking you farther than `M-Q-}`
(forward-paragraph).


## Extended Characters

The "Compose" key (AKA `Multi_key`) is a pretty cool way to type
things like fancy symbols and characters from other languages.  E.g.,
I'm creating this `π` with `CMP g p` (think "**g**reek **p**i").  And
an `→` is `CMP - >`.  Since these only take three key presses, it's
probably not worth populating unused QWERkeys (e.g., `Q-S-p → π`) with
things like the Greek alphabet.  You'll notice that `CMP` is in an
inconvenient spot, but it's only a (probably rare) tap-key.  You might
have to do a little setup to get all the characters you're after.  So
included in this repo is a `.xbindkey` file including Greek symbols.
Put this in your `$HOME`.

I'm considering populating some of the unused keys for the
[most common](https://www.utexas.edu/learn/html/spchar.html)
diacritics and symbols, like `ñ¿¡é`, etc.

See `/usr/share/X11/locale/en_US.UTF-8/Compose` for the full list
composable combos.


## Non-Editor Shortcuts (browsers, etc)

Browsers and other apps rely frequently on arrow keys and other
combos involving Home/End/PgUp/PgDn.

`C-PgUp/PgDn` -- tab left -- becomes `C-Q-f/v`
`M-Left/Right` -- back button -- becomes `M-Q-a/d`
`M-<N>` -- `N` is a number for which tab to visit -- `Q-S-M-N`


## Alternative Right-QRK Key Layout

There is actually an alternative right-hand-QRK layout available.  I
used it for a couple weeks and liked it.  The only downside is that
you have to train yourself to pause to release `.` before pressing
`space`.  Otherwise, I really like having `.` as `Q-`.


## License

GPL.  See `LICENSE.md`.
