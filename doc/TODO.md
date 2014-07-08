# TODO
Just a simple TODO list of possible ideas, bugfixes, etc. 

## Possible Features
* Windows installer?
	* There's a case for both a GUI and for a CLI installer.
* More evidence.
* Check rules that are `default_off`.
* Improve `install.sh`.
	* 2014-05-02 update: `install.sh` is slightly more interactive and pretty, but it could be improved more. Here are some ideas
		* Improve directory input 
			* Tab completion?
			* Support for `~/` or `$HOME`?
	* Merge tails.sh and install.sh
		* First prompt is probably best place for this. Something like `Are you currently running Tails?` would make it pretty painless.
			* Maybe keep both installers? Advertise one as "Fast Tails Installer" and the other as "Interactive Installer" is the idea that I (colin) am thinking of. 
* More i2p addresses.

## Extension TODO
	* Eliminate any and all EFF logos
	* Actually seperate the two extensions
		* Right now it is overriding HTTPS Everywhere if it is installed. 
	* Reduce codebase
		* We probably don't need Chromium branch, or SSL Observatory
	* Better extension artwork
	* Mobile Firefox Extension?
		* Firefox for Android can be tunneled over Tor, and OrFox will be out one of these days

## Bugs
* See above
