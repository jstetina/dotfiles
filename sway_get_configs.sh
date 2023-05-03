#! /bin/bash

# WAYBAR CONFIG
cp $HOME/.config/waybar/config config/waybar/config
cp $HOME/.config/waybar/style.css config/waybar/style.css

# SWAY CONFIG
cp $HOME/.config/sway/config config/sway/config

# ROFI LAUNCHER CONFIG
cp $HOME/.config/rofi/config.rasi config/rofi/config.rasi

echo "CURRENT SWAYWM CONFIG IMPORTED FROM SYSTEM"
