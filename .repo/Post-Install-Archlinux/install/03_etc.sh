#!/bin/bash

if [[ "$UID" != 0 ]]; then
    echo "USER NOT ROOT"
    sudo $0
    exit
else
    echo "USER IS ROOT"
fi

cd ./etc

pacman --needed -S gnome-keyring

cp --verbose --recursive --force --remove-destination --no-dereference --preserve=links pam.d/* /etc/pam.d/

cp --verbose --recursive --force --remove-destination --no-dereference --preserve=links sudoers.d/* /etc/sudoers.d/

cp --verbose --recursive --force --remove-destination --no-dereference --preserve=links mkinitcpio.conf /etc/
cp --verbose --recursive --force --remove-destination --no-dereference --preserve=links sddm.conf /etc/
cp --verbose --recursive --force --remove-destination --no-dereference --preserve=links vconsole.conf /etc/

cp --verbose --recursive --force --remove-destination --no-dereference --preserve=links pamac.conf /etc/

chown -R sddm:sddm /var/lib/sddm/.config
