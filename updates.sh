#!/bin/bash
# # Original Credits for Arch version # #
# Author: Piotr Miller
# e-mail: nwg.piotr@gmail.com
# Website: http://nwg.pl
# Project: https://github.com/nwg-piotr/tint2-executors
# License: GPL3

# Credits: RaphaelRochet/arch-update
# https://github.com/RaphaelRochet/arch-update
# Icon by @edskeye

upd=$(xbps-install -Mun | awk '{print $2}' | sort | uniq -c | xargs)

if [[ ! -z "$upd" ]]
then
    echo ~/.icons/Papirus/24x24/apps/distributor-logo-void.svg
    echo "($upd)" #| wc -l
    notify-send "Pending updates:" "<i>$upd</i>" --expire-time=5000
else
    echo ~/.icons/Papirus/24x24/apps/distributor-logo-void.svg
fi