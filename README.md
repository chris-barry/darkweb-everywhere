# Darkweb Rulesets

Darkweb-Everywhere is a collection of rulesets for [HTTPS Everywhere][0] which will redirect you to the hidden service equivalent.
For these rulesets to really work, you should be using the [Tor Browser Bundle][1].

An example of this would be:
* <https://duckduckgo.com> will be redirect to <http://3g2upl4pq6kufc4m.onion>.
* <https://3g2upl4pq6kufc4m.tor2web.org> will redirect to <http://3g2upl4pq6kufc4m.onion>.

## Why is this needed?

Due to the way Tor works, when you connect to sites which are not hidden services you must connect through an exit node.
This exit node is able to see which sites are connecting to.
By having the hidden service loaded instead of the clearnet URL, you make your entire connection without leaving the Tor network.

## How Can I Trust You?

In the file, `doc/EVIDENCE.md` is a source of where each site is documented to be fonud.
If there is no source for the site, the rule will default to off until proper documentation is found.
The code and commit history are also freely available for anyone to audit.

If you see any discrepancies please make it known by filing an issue.

## Installation

### Unix-like

0. Have Tor Browser Bundle installed.
1. Clone this repo locally using, `git clone https://github.com/chris-barry/darkweb-everywhere.git`.
2. Run, `bin/install.sh`.
3. Restart the Tor Browser Bundle if it was already running.
4. Done.

### Windows

0. Have Tor Browser Bundle installed.
1. Download the [zip file][2] of this project.
2. Copy all the `.xml` files from `darkweb-everywhere/rules` to `%PATH_TO_TOR%/tor-browser_en-US/Data/Browser/profile.default/HTTPSEverywhereUserRules/`.
	* `%PATH_TO_TOR%` is assumed to be the directory where Tor is installed.
3. Restart the Tor Browser Bundle if it was already running.
4. Done.

## Contributing

If you know of any sites which offer a normal domain, and a hidden service please add them, or put in a ticket.

HTTPSEverywhere has a good [guide][3] on how to make your own rules.
The only difference is, make sure the name is appended with `Onion`.

Upon making rules, add a line to `doc/EVIDENCE.md` with the site's name, and any documentation that proves that the hidden service is legitimate.

Otherwise, please mark the rule with a default setting of off, and give a brief reason as to why. 
Example: `<ruleset name="Example Onion" default_off="No proof.">`

For i2p rules, the same rules apply, but append the rules with `Eepsite` and place the evidence in `doc/EVIDENCE-i2p.md`

## Disclaimer

I do not vouch for, endorse, or disapprove of any of these sites, I just supply these so everyone has more privacy. 

[0]: https://www.eff.org/https-everywhere "HTTPS Everywhere"
[1]: https://www.torproject.org/projects/torbrowser.html.en "The Tor Browser Bundle"
[2]: https://github.com/chris-barry/darkweb-everywhere/archive/master.zip
[3]: https://www.eff.org/https-everywhere/rulesets "HTTPS Everywhere Rulesets"
