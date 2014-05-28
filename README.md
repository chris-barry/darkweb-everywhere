# Darkweb Rulesets

This will ensure that when you connect to a website which also hosts a hidden service, you will connect to the hidden service.
For example:
* <https://duckduckgo.com> will be redirect to <http://3g2upl4pq6kufc4m.onion>.
* <https://3g2upl4pq6kufc4m.tor2web.org> will redirect to <http://3g2upl4pq6kufc4m.onion>.

To make the re-directions, I utilize [HTTPS Everywhere][0].
For them to really work, you should be using the [Tor Browser Bundle][1].

## Why

Due to the way Tor works, when you connect to sites which are not hidden services you must connect through an exit node.
This exit node is able to see which sites are being connected to.
By having the hidden service loaded instead of the clearnet URL, you make your entire connection without leaving the tor network.

## How Can I Trust You?

The proof is in `EVIDENCE.md`. 
That file contains where I found the official hidden service of the respective sites.
You also have the code, and its change history readily available.

If you see any discrepancies please make it known by filing an issue.

## Installation

For the rulesets to work, they are placed in `~/tor-browser_en-US/Data/Browser/profile.default/HTTPSEverywhereUserRules/`.

There's a basic script for \*nix users to install.
Just run, `./install.sh`.

Tails users! 
You have a script just for you, due to the different location of the HTTPS Everywhere Rules
Open up a terminal and run `./darkweb-everywhere/tails.sh`.

For the time being, users running Tor Browser Bundle natively on Windows will have to copy and paste all the `.xml` files into the directory listed above. 
We hope to fix this by adding a Windows installer at some point.

## Contributing

If you know of any sites which offer a normal domain, and a hidden service please add them, or put in a ticket.

HTTPSEverywhere has a good [guide][2] to make rules.
The only difference is, make sure the name is appended with `Onion`.

Upon making rules, add a line to `EVIDENCE.md` with the site's name, and any documentation that proves that the hidden service is legitimate.

Otherwise, please mark the rule with a default setting of off, and give a brief reason as to why. 
Example: `<ruleset name="Example Onion" default_off="No proof.">`

For i2p rules, the same rules apply, but append the rules with `Eepsite` and place the evidence in `EVIDENCE-i2p.md`

## Disclaimer

I do not vouch for, endorse, or disapprove of any of these sites, I just supply these so everyone has more privacy. 

[0]: https://www.eff.org/https-everywhere "HTTPS Everywhere"
[1]: https://www.torproject.org/projects/torbrowser.html.en "The Tor Browser Bundle"
[2]: https://www.eff.org/https-everywhere/rulesets "HTTPS Everywhere Rulesets"
