evil inconsistent dependency list (installed with pacman or paru or whatever):

```
hyprland hyprutils hyprpolkitagent hyprlock hyprland-protocols hypridle hyprgraphics hyprcursor \
wofi playerctl \
satty grim slurp hyprshot \
mako waybar nwg-look kvantum darkman \
catppuccin-gtk-theme-frappe catppuccin-gtk-theme-latte kvantum-theme-catppuccin-git \
network-manager-applet \
xdg-desktop-portal xdg-desktop-portal-gtk \
thunar thunar-volman thunar-archive-plugin \ 
ttf-nerd-fonts-symbols-mono \
wl-clip-persist
```

darkman scripts need to be installed with the following command

```sh
ln -s .local/share/dark-mode.d/ /usr/share/dark-mode.d
ln -s .local/share/light-mode.d/ /usr/share/light-mode.d
```

