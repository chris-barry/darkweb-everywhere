#!/bin/sh
# New install script for darkweb-everywhere. Pulls heavily from http://alvinalexander.com/linux-unix/shell-script-how-prompt-read-user-input-bash
# As of 2014-05-02, this script seems to work on my (Colin) machine. I would like some testing though!

TORBROWSER="tor-browser_en-US/Data/Browser/profile.default/HTTPSEverywhereUserRules/"
RED='\e[0;31m'
GREEN='\e[0;32m'
NC='\e[0m' # No color - include this otherwise your terminal output gets messed up.

read -p "Is 'tor-browser_en-US/' located in your home directory? Y/n " ANSWER
while true
do
	case $ANSWER in
		[yY]* ) mkdir -p $HOME/$TORBROWSER # makes $TORBROWSER directory if none exists.
			cp rules/*.xml $HOME/$TORBROWSER # could also be ~/
			echo -e "${GREEN}Installation complete!${NC}"
			break;;
		[nN]* ) read -p "What directory is 'tor-browser_en-US/' located in? Please provide absolute path. Example: type /opt for /opt/tor-browser_en-US " DIRECTORY
			mkdir -p $DIRECTORY/$TORBROWSER
			cp rules/*.xml $DIRECTORY/$TORBROWSER
			echo -e "${GREEN}Installation complete!${NC}"
			break;;
		* )	echo -e "${RED}Error: please enter Y or N${NC}"
			break;;
	esac
done
