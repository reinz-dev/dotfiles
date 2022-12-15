#!/bin/bash

echo -e "Удаление .cache в локальном каталоге /home/lera\n"
sudo rm -rf /home/lera/.cache

echo -e "Смена прав в локальном каталоге /home/lera\n"
sudo chown -R lera:lera /home/lera

echo -e "Синхронизация /home/lera/ ./lera\n"
rsync --verbose -aSH --stats --human-readable --delete --delete-excluded --ignore-errors --force --exclude-from=./list.txt /home/lera/ ./lera

echo -e "\n"
read -rsn1 -p"Press any key to exit";echo
