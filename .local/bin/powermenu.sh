#!/bin/bash

#op=$( echo -en "Suspend\0icon\x1fsystem-suspend\n Lock\0icon\x1fsystem-lock-screen\nLogout\0icon\x1fsystem-log-out\nHibernate\0icon\x1fsystem-suspend-hibernate\nReboot\0icon\x1fsystem-reboot\n Shutdown\0icon\x1fsystem-shutdown\n" | wofi -i --dmenu )
op=$( echo -e " Poweroff\n Reboot\n Suspend\n Lock\n Logout" | wofi -c $HOME/.config/wofi/powerMenu | awk '{print tolower($2)}' )
#op=$( echo -en " Poweroff\n Reboot\n Suspend\n Lock\n Logout" | wofi -c $HOME/.config/wofi/powerMenu )

case $op in 
        poweroff)
                ;&
        reboot)
                ;&
        suspend)
                systemctl $op
                ;;
        lock)
		swaylock
                ;;
        logout)
                swaymsg exit
                ;;
esac
