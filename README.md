# dotfiles
[x] [fish](https://fishshell.com/) (shell/prompt)
[x] [niri](https://github.com/YaLTeR/niri) (compositor)
[x] [swaybg](https://github.com/swaywm/swaybg) (background image)
[ ] [swaylock](https://github.com/swaywm/swaylock) (screen lock)
[ ] [swayosd](https://github.com/ErikReider/SwayOSD) (actions display)
[x] [waybar](https://github.com/Alexays/Waybar) (status bar)
[x] [kitty](https://sw.kovidgoyal.net/kitty/) (pretty in-config tabs)
[ ] [nemo](https://wiki.archlinux.org/title/Nemo) (file manager)
[ ] [dunst](https://github.com/dunst-project/dunst) (notifications)
[ ] [albert](https://albertlauncher.github.io/) (spotlight-like)
[ ] [polkit-gnome](https://wiki.archlinux.org/title/Polkit) (gtk polkit)
[x] [wtype](https://github.com/atx/wtype) (keybinds)
[x] [short offloads](https://wiki.archlinux.org/title/PRIME) (prime-run & mesa-run)
[x] charge limiter (90)
[x] start qemu network

Checkmarks meaning presence of config

![preview](preview2880x1800.png)

## installation
no autoinstall script

(but there arent many)

```
yay -S fish niri swaybg swaylock swayosd waybar kitty nemo nemo-fileroller albert polkit-gnome wtype xwayland-satellite xdg-desktop-portal-wlr
```

(albert is the only one from [AUR](https://aur.archlinux.org/packages/albert))

```
sudo systemctl enable swayosd-libinput-backend.service --now
```

config/ contents go in .config/

utils/ contents may go in /sbin/ or where you like it more

systemd/ in /etc/systemd/system/

(also enable service for it to work)

I may forget something

## niri

`Super + Q` spawns `kitty`

`Super + D` spawns `nemo`

`Super + F` spawns `firefox`

`Super + T` spawns `Telegram`

`Super + R` spawns `albert`

`Super + Alt + L` locks session (`swaylock`)

## swaybg

Place you desired background as `~/.config/niri/background.png`

## waybar

There are niri/workspaces, niri/keyboard, caps (though i think it fell off), date, wttr.in, ram, power, dgpu state, backlight, charge, tray

## note
Thanks to the *lgaboury* for the good [waybar example](https://github.com/lgaboury/Sway-Waybar-Install-Script)

Fonts are from [Nothing](https://nothing.by/)

