# TODO
Just a simple TODO list of possible ideas, bugfixes, etc. 

## Possible Features
* Tails support. 
  * Maybe a prompt in the script asking the user if they are using Tails or not is the least painful way of doing this. I (colin) will do some testing over my upcoming break to see if one can modify Tails' HTTPS Everywhere rules without needing the user to put in a password.
  * 2014-03-17 -- I will ask in the IRC room at some point where exactly the HTTPS Everywhere rules are stored. Initial suspicions point to it being pulled from the torproject's git page, rather than it being stored locally. 
	* 2014-05-02 -- I completely forgot that this was on my TODO. I plan on making some more progress after this semester is over in ~10 days. 
* Windows installer?
	* There's a case for both a GUI and for a CLI installer.
* More evidence.
* Check rules that are `default_off`.
* Improve `install.sh`.
	* 2014-05-02 update: `install.sh` is slightly more interactive and pretty, but it could be improved more. Here are some ideas
		* Improve directory input 
			* Tab completion?
			* Support for `~/` or `$HOME`?
		* If Tails support is ever figured out, a preset for Tails might be a good idea for less knowledgeable users. 
			* First prompt is probably best place for this. Something like `Are you currently running Tails?` would make it pretty painless.
* More i2p addresses.

## Bugs
* None so far!
