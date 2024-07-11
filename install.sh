#!/bin/bash
# Colors definition
BLACK='\033[0;30m'
DGRAY='\033[1;30m'
RED='\033[0;31m'
LRED='\033[1;31m'
GREEN='\033[0;32m'
LGREEN='\033[1;32m'
ORANGE='\033[0;33m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
LBLUE='\033[1;34m'
PURPLE='\033[0;35m'
LPURPLE='\033[1;35m'     
CYAN='\033[0;36m'
LCYAN='\033[1;36m'
LGRAY='\033[0;37m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color


printf "${YELLOW}Installing cinnamon applets and extensions...\n${NC}"
# cinnamon applet installer
cd ~/.local/share/cinnamon/applets/

printf "${LCYAN}- Applet QRedShift:\n${NC}"
# QRedShift
# This version is currently outdated and will no longer receive updates from the original author.
# Using author official repository
curl https://github.com/raphaelquintao/QRedshiftCinnamon/raw/master/install.sh -sSfL | bash 

printf "${LCYAN}- Applet Bash Sensors:\n${NC}"
# Bash Sensors
curl -O https://cinnamon-spices.linuxmint.com/files/applets/bash-sensors@pkkk.zip && unzip bash-sensors@pkkk.zip && rm -rf bash-sensors@pkkk.zip
sudo curl -fsSLo /usr/local/sbin/get-temps.sh https://raw.githubusercontent.com/AlessandroPerazzetta/cinnamon-applet-bash_sensors/main/get-temps.sh

printf "${LCYAN}- Applet Sensors Monitor:\n${NC}"
# Sensors Monitor
curl -O https://cinnamon-spices.linuxmint.com/files/applets/Sensors@claudiux.zip && unzip Sensors@claudiux.zip && rm -rf Sensors@claudiux.zip

# cinnamon extensions installer
cd ~/.local/share/cinnamon/extensions/

printf "${LCYAN}- Applet Extension Back to Monitor:\n${NC}"
# Back to Monitor
curl -O https://cinnamon-spices.linuxmint.com/files/extensions/back-to-monitor@nathan818fr.zip && unzip back-to-monitor@nathan818fr.zip && rm -rf back-to-monitor@nathan818fr.zip

printf "${LCYAN}- Applet Extension Cinnamon Dynamic Wallpaper:\n${NC}"
# Cinnamon Dynamic Wallpaper
curl -O https://cinnamon-spices.linuxmint.com/files/extensions/cinnamon-dynamic-wallpaper@TobiZog.zip && unzip cinnamon-dynamic-wallpaper@TobiZog.zip && rm -rfc innamon-dynamic-wallpaper@TobiZog.zip

printf "${LCYAN}--------------------------------------------------------------------------------\n${LRED}"
printf "Apply settings for spices using dconf or from applet/extension settings.\n\n"
printf "\tExample: dconf save: 'dconf dump / > dconf-root.conf'\n"
printf "\t\tdump: dconf dump: 'dconf dump / > dconf-root.conf'\n"
printf "\t\tload: dconf load: 'dconf dump / < dconf-root.conf'\n"
printf "${LCYAN}--------------------------------------------------------------------------------\n${GREEN}"