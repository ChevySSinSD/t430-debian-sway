#!/usr/bin/bash
if grep -q open /proc/acpi/button/lid/LID/state; then
    swaymsg output LVDS-1 enable
else
    swaymsg output LVDS-1 disable
fi
