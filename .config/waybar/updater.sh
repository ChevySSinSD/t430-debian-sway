#!/bin/bash
#     __  __          __      __          _____           _       __
#    / / / /___  ____/ /___ _/ /____     / ___/__________(_)___  / /_
#   / / / / __ \/ __  / __ `/ __/ _ \    \__ \/ ___/ ___/ / __ \/ __/
#  / /_/ / /_/ / /_/ / /_/ / /_/  __/   ___/ / /__/ /  / / /_/ / /_
#  \____/ .___/\__,_/\__,_/\__/\___/   /____/\___/_/  /_/ .___/\__/
#      /_/                                             /_/
# Purpose       Update count of available updates via apt-get for waybar
# Reference	https://askubuntu.com/a/1210345/1578863

# Find the number of updates by querying apt-get, using grep to filter out Inst, and return a line count
numUpdates=$(apt-get -q -y --ignore-hold --allow-change-held-packages --allow-unauthenticated -s dist-upgrade | /bin/grep  ^Inst | wc -l)

# Return the number of updates and tooltip for waybar (waybar expects \n between name and tooltip)
echo -en $numUpdates'\n'$numUpdates' Updates Available'

# If updates are available, trigger the critical coloring
if (( $numUpdates > 0 )); then echo -en '\ncritical'; fi
