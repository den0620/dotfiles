# dotfiles

- [x] [fish](https://fishshell.com/) (shell/prompt)

- [x] [niri](https://github.com/YaLTeR/niri) (compositor)

- [x] [swaybg](https://github.com/swaywm/swaybg) (background image)

- [ ] [swaylock](https://github.com/swaywm/swaylock) (screen lock)

- [ ] [swayosd](https://github.com/ErikReider/SwayOSD) (actions display)

- [x] [waybar](https://github.com/Alexays/Waybar) (status bar)

- [x] [kitty](https://sw.kovidgoyal.net/kitty/) (pretty in-config tabs)

- [ ] [nemo](https://wiki.archlinux.org/title/Nemo) (file manager)

- [ ] [dunst](https://github.com/dunst-project/dunst) (notifications)

- [x] [fuzzel](https://codeberg.org/dnkl/fuzzel/) (app launcher)

- [ ] [polkit-gnome](https://wiki.archlinux.org/title/Polkit) (gtk polkit)

- [ ] [gnome-keyring](https://wiki.archlinux.org/title/GNOME/Keyring) (widely supported keyring)

- [ ] [pavucontrol](https://freedesktop.org/software/pulseaudio/pavucontrol/) (sound control)

- [x] [wtype](https://github.com/atx/wtype) (keybinds)

- [x] [short offloads](https://wiki.archlinux.org/title/PRIME) (prime-run & mesa-run)

- [x] charge limiter (90)

- [x] start qemu network

- [x] `mesa-run` and `prime-run` to either feed procces i915 iGPU or nvidia dGPU

Checkmarks meaning presence of config

![preview](preview2880x1800.png)

## installation
no autoinstall script

(but there arent many)

```
pacman -S fish niri swaybg swaylock swayosd waybar kitty nemo nemo-fileroller fuzzel polkit-gnome pavucontrol wtype xwayland-satellite xdg-desktop-portal-wlr
```

```
systemctl enable swayosd-libinput-backend.service --now
```

config/ contents go in .config/

utils/ contents may go in /sbin/ or where you like it more

systemd/ in /etc/systemd/system/ or ~/.config/systemd/user/ (swaybg)

(also enable service for it to work)

I may forget something

## niri

`Super + Q` spawns `kitty`

`Super + D` spawns `nemo`

`Super + F` spawns `firefox`

`Super + T` spawns `Telegram`

`Super + R` spawns `fuzzel`

`Super + Alt + L` locks session (`swaylock`)

## swaybg

Place you desired background as `~/.config/niri/background.png`

Move swaybg.service to `~/.config/systemd/user/` and `systemctl --user enable swaybg.service --now && systemctl --user add-wants niri.service swaybg.service`

## waybar

There are niri/workspaces, niri/keyboard, caps (though it fell off and i haven't felt like fixing it), sound, date, wttr.in, ram, power, dgpu state, backlight, charge, tray

## note
Thanks to the *lgaboury* for the good [waybar example](https://github.com/lgaboury/Sway-Waybar-Install-Script)

Fonts are from [Nothing](https://nothing.by/)

Background is "Grozny" from [Stanley Donwood](https://www.slowlydownward.com/selected-works/) edited to fit 2880x1800

