#!/bin/sh
# Mac install script for darkweb-everywhere.

if [ "$(uname)" != "Darwin" ]; then
	echo -e "This install script only works on Macs. Maybe try bin/install.sh"
	exit 1
fi
CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
RULES="$CURRENTDIR/../rules/*.xml"
APPNAME="TorBrowser.app"
TORBROWSER="$APPNAME/Data/Browser/profile.default/HTTPSEverywhereUserRules/"
RED='\033[38;5;1m'
GREEN='\033[38;5;34m'
NC='\033[39m' # No color - include this otherwise your terminal output gets messed up.

read -p "Is '$APPNAME/' located in your Applications directory? Y/n (q to quit)" ANSWER
while true
do
	case $ANSWER in
		[yY]* ) mkdir -p /Applications/$TORBROWSER # makes $TORBROWSER directory if none exists.
			cp $RULES /Applications/$TORBROWSER
			echo "${GREEN}Installation complete!${NC}"
			break;;
		[nN]* ) read -p "What directory is '$APPNAME/' located in? Please provide absolute path. Example: type /Users/colin for /Users/colin/$APPNAME " DIRECTORY
			mkdir -p $DIRECTORY/$TORBROWSER
			cp $RULES $DIRECTORY/$TORBROWSER
			echo "${GREEN}Installation complete!${NC}"
			break;;
		[qQ]* ) echo "Quitting"
			exit 2
			break;;
		* )	echo "${RED}Error: please enter Y or N${NC}"
			break;;
	esac
done
