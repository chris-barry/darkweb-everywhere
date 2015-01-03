# Darkweb Rulesets

Darkweb-Everywhere is a fork of [HTTPS Everywhere][0] that in addition to the normal HTTPS Everywhere functionality, will redirect you to the hidden service equvalent of a website if present. 
For this extention to work, you should be using installing it inside the [Tor Browser Bundle][1].

An example of a hidden service redirect would be:
* <https://duckduckgo.com> will be redirected to <http://3g2upl4pq6kufc4m.onion>.
* <https://3g2upl4pq6kufc4m.tor2web.org> will be redirected to <http://3g2upl4pq6kufc4m.onion>.

## Why is this needed?

Due to the way Tor works, when you connect to sites which are not hidden services you must connect through an exit node.
This exit node is able to see which sites are being connected to.
By having the hidden service loaded instead of the clearnet URL, you make your entire connection without leaving the Tor network.

A good explanation of what Tor hidden services are and how they work can be found [here][2].

## How can I trust you?

In the files [doc/EVIDENCE.md](doc/EVIDENCE.md) and [doc/EVIDENCE-i2p.md](doc/EVIDENCE-i2p.md) you can find the source where each address is documented.
If there is no proof for the address, the rule will stay under unverified-rules folder until proper documentation is found.
The code and commit history are also freely available for anyone to audit.

If you see any discrepancies please make it known by filing an issue.

## Installation

*Disclaimer*: Before proceeding, be sure you understand the [issues](https://github.com/chris-barry/darkweb-everywhere/issues/32)  associated with darkweb-everywhere and you are willing to take the risk.

0. If you haven't already, download the [Tor Browser Bundle][9]
1. Start up the Tor Browser Bundle
2. Download [the extension][5]
3. Drag the downloaded extension into the Tor Browser Bundle's [Addons page][6].

## Contributing

Before you begin, make sure you check out [HTTPSEverywhere's excellent guide][4] on how to write rulesets.

1. Find a site with a dual setup.
2. Find evidence that the hidden service is hosted, or endorsed by the correct people.
3. Add your evidence to `doc/EVIDENCE.md` or `doc/EVIDENCE-i2p.md`.
4. Write your ruleset, and place it in `src/chrome/content/rules/`.
5. Test twice.
6. Commit and push.

### For Rulesets

Make sure to append the name with "Onion" or "Eepsite", depending on which network the site is hosted on.
This is so there are no potential conflicts with existing rules.

For example:
* `<ruleset name="Example Onion"/>`
* `<ruleset name="Example Eepsite"/>`

### For Evidence

In order to make sure all of the clearnet to hidden mappings are correct, proper evidence is required.
Proper evidence can consist of:

* A link on the clearnet site.
* A tag in the HTML similar to `<link rel="x-tor-hidden-service" href="sweetsite.onion">`.
* A signed email from the owner of the site saying it is real.
* A link on Twitter by the verified site owner saying so.

The above is not exhaustive or absolute.
Many other methods can be accepted, assuming they are reasonable to the maintainers.
If there is no definitive proof, the site is down, or if the rule is for i2p, the rule should be set to default to off with the tag `default_off=""` with an appropriate reason in double quotes.
If possible, please give a brief reason as to why the rule is disabled.

If the rule cannot be verified, please place the `.xml` file in the `unverified-rules` folder.
The reason for this is to actively discourage users from using those rulesets.

## Disclaimer

This extension should be considered experimental, and should not be used if security and anonymity are your primary concerns. 
Modifying the Tor Browser is not encouraged by The Tor Project and should be done only by users who know what they are doing.

The developers do not vouch for, endorse, approve, disapprove, or renounce of any of these sites.
These are supplied for our users, so that they have more privacy. 

Darkweb-everywhere, the extension, and the developers of darkweb-everywhere are not affiliated with the EFF in any way, shape or form. 
(Although we love everything they are doing!)


## Thank you!

A **BIG** thank you to the EFF and all the many contributors to HTTPS Everywhere
Another **BIG** thank you to The Tor Project and all the contributors that help with Tor.
Without either of these two organizations, darkweb-everywhere would not exist.

Thanks to [bee][7](!!!) and [fortasse][8] for the original ideas that lead to this extension

Thank you to those who have contributed rules, code, and even suggestions to us. 

And finally, thank you for using this software!

[0]: https://www.eff.org/https-everywhere "HTTPS Everywhere"
[1]: https://www.torproject.org/projects/torbrowser.html.en "The Tor Browser Bundle"
[2]: https://www.youtube.com/watch?v=eAxBuckgPuU#t=17
[3]: https://github.com/chris-barry/darkweb-everywhere/archive/master.zip
[4]: https://www.eff.org/https-everywhere/rulesets "HTTPS Everywhere Rulesets"
[5]: https://github.com/chris-barry/darkweb-everywhere/releases
[6]: about:addons
[7]: https://trac.torproject.org/projects/tor/ticket/1670
[8]: https://lists.torproject.org/pipermail/tor-talk/2014-February/032220.html
[9]: https://www.torproject.org/download/download-easy.html.en
[10]: https://github.com/chris-barry/darkweb-everywhere/issues/32
