#!/bin/bash
# this script installs the nesasary packages for PythonicOS to display correctly and run
echo "Installing Openbox"

sudo pacman -Rs openbox # remove openbox from the system because its in a broken state

sudo pacman -S openbox # install openbox

echo "Installing obconf" # install obconf to configure openbox

sudo pacman -S obconf

echo "Installing obmenu-generator"

sudo pacman -S obmenu-generator  # install obmenu-generator to configure the openbox menu

echo "Installing tint2"

sudo pacman -S tint2  # install tint2 to configure the taskbar

echo "Installing nitrogen"

sudo pacman -S nitrogen  # install nitrogen to configure the wallpaper

echo "Installing lxappearance"

sudo pacman -S lxappearan # install lxappearance to configure the theme

# once we are done installing the packages we need to configure them

sudo echo "exec openbox-session" >> ~/.xinitrc # add the openbox session to the xinitrc file so that it starts at boot

sudo echo " python /home/PythonicOS/python/PythonicOS.py &" >> ~/.config/openbox/autostart # add the pythonicOS.py file to the autostart file so that it starts at login when openbox starts

echo "Installing complete!"

echo "just restart your computer and you will be within PythonicOS"