#!/bin/bash

pacman -S wget
pacman -S fakeroot
pacman-db-upgrade
yaourt -R package-query yaourt
curl -O https://aur.archlinux.org/packages/pa/package-query/package-query.tar.gz
tar zxvf package-query.tar.gz
cd package-query
makepkg -si --asroot
cd ..
curl -O https://aur.archlinux.org/packages/ya/yaourt/yaourt.tar.gz
tar zxvf yaourt.tar.gz
cd yaourt
makepkg -si --asroot
cd ..
curl -O https://aur.archlinux.org/packages/ya/yaourt-gui/yaourt-gui.tar.gz
tar zxvf yaourt-gui.tar.gz
cd yaourt-gui
makepkg -si --asroot
cd ..
yaourt -S yaourt-gui
# Удалить скаченные архивы и папки.
