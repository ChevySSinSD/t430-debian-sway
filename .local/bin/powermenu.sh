#!/bin/bash

op=$( echo -en " Poweroff\nﰇ Reboot\n鈴 Hibernate\n⏾ Suspend\n Lock\n Logout" | wofi -c $HOME/.config/wofi/powerMenu | awk '{print tolower($2)}' )

case $op in
        lock)
		swaylock --clock --indicator --fade-in 0.2 -i ~/Pictures/Wallpapers/mount-fuji.jpg
                ;;
        logout)
                swaymsg exit
                ;;
	*)
                systemctl $op
                ;;
esac
