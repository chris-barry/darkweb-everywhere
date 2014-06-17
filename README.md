# Darkweb Rulesets

Darkweb-Everywhere is a collection of rulesets for [HTTPS Everywhere][0] which will redirect you to the hidden service equivalent.
For these rulesets to really work, you should be using the [Tor Browser Bundle][1].

An example of this would be:
* <https://duckduckgo.com> will be redirected to <http://3g2upl4pq6kufc4m.onion>.
* <https://3g2upl4pq6kufc4m.tor2web.org> will be redirected to <http://3g2upl4pq6kufc4m.onion>.

## Why is this needed?

Due to the way Tor works, when you connect to sites which are not hidden services you must connect through an exit node.
This exit node is able to see which sites are being connected to.
By having the hidden service loaded instead of the clearnet URL, you make your entire connection without leaving the Tor network.

## How can I trust you?

In the file, `doc/EVIDENCE.md` is a source of where each site is documented to be found.
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

Before you begin, make sure you check out [HTTPSEverywhere's excellent guide][3] on how to write rulesets.

1. Find a site with a dual setup.
2. Find evidence that the hidden service is hosted, or endorsed by the correct people.
3. Add your evidence to `doc/EVIDENCE.md` or `doc/EVIDENCE-i2p.md`.
4. Write your ruleset, and place it in `rules/` or `rules-i2p/`.
5. Test twice.
6. Commit and push.

### For Rulesets

Make sure to append the name with "Onion" or "Eepsite", depending on which network the site is hosted on.

For example:
* `<ruleset name="Example Onion/>"`
* `<ruleset name="Example Eepsite/>"`

### For Evidence

In order to make sure all of the clearnet to hidden mappings are correct, proper evidence is required.
Proper evidence can consist of:

* A link on the clearnet site.
* A tag in the HTML similar to `<link rel="x-tor-hidden-service" href="sweetsite.onion">`.
* A signed email from the owner of the site saying it is real.
* A link on Twitter by the verified site owner saying so.

The above is not exhaustive or absolute.
Many other methods can be accepted, assuming they are reasonable to the maintainers.
If there is no definitive proof, the rule should be set to default to off with the tag `default_off="No proof."`.
If possible, please give a brief reason as to why the rule is disabled.

If the rule cannot be verified, please place the `.xml` file in the `unverified-rules` folder.
The reason for this is to actively discourage users from using those rulesets.

## Disclaimer

I do not vouch for, endorse, or disapprove of any of these sites, I just supply these so everyone has more privacy. 

[0]: https://www.eff.org/https-everywhere "HTTPS Everywhere"
[1]: https://www.torproject.org/projects/torbrowser.html.en "The Tor Browser Bundle"
[2]: https://github.com/chris-barry/darkweb-everywhere/archive/master.zip
[3]: https://www.eff.org/https-everywhere/rulesets "HTTPS Everywhere Rulesets"
