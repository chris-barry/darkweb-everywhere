# Darkweb Rulesets

This will ensure that when you connect to a website which also hosts a hidden service, you will connect to the hidden service.
For example:
* <https://duckduckgo.com> will be redirect to <http://3g2upl4pq6kufc4m.onion>.
* <https://3g2upl4pq6kufc4m.tor2web.org> will redirect to <http://3g2upl4pq6kufc4m.onion>.
To make the re-directions, I utilize [HTTPS Everywhere][0].
For them to really work, you should be using the [tor browser bundle][1].

## Why

Due to the way tor works, when you connect to sites which are not hidden services you must connect through an exit node.
This exit node is able to see which sites are being connected to.
By having the hidden service loaded instead of the clearnet URL, you make your entire connection without leaving the tor network.

## How Can I Trust You?

The proof is in `EVIDENCE.md`.
You also have the code, and it's change history readily available.
That file contains where I found the official hidden service of the respective sites.
If you see any discrepancies make it known.

## Installation

To install, put the rulesets you want in `~/tor-browser_en-US/Data/Browser/profile.default/HTTPSEverywhereUserRules/`.

There's a basic script for \*nix users to install.
Run, `./install.sh`.

## Contributing

If you know of any sites which offer a normal domain, and a hidden service please add them, or put in a ticket.

HTTPSEverywhere has a good [guide][2] to make rules.
The only difference is, make sure the name is appended with "Onion".
Upon making rules, you add a line to EVIDENCE.md with the site's name, and any documentation that proves that the hidden service is legitimate.
Otherwise, please mark the rule with a default setting of off. 

## Disclaimer

I do not vouch for, endorse, or disapprove of any of these sites, I just supply these so everyone has more privacy. 

[0]: https://www.eff.org/https-everywhere "HTTPS Everywhere"
[1]: https://www.torproject.org/projects/torbrowser.html.en "The Tor Browser Bundle"
[2]: https://www.eff.org/https-everywhere/rulesets "HTTPS Everywhere Rulesets"
