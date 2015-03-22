#!/bin/sh -ex
sudo pacman -Sy base-devel --needed --noconfirm
curl -O https://aur.archlinux.org/packages/pa/package-query/package-query.tar.gz
tar xfz package-query.tar.gz -C /tmp
pushd /tmp/package-query
makepkg -sf
sudo pacman -U --noconfirm package-query-*.pkg.tar.xz
popd
curl -O https://aur.archlinux.org/packages/ya/yaourt/yaourt.tar.gz
tar xfz yaourt.tar.gz -C /tmp
pushd /tmp/yaourt
makepkg -sf
sudo pacman -U --noconfirm yaourt-*.pkg.tar.xz
popd
