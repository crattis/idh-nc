# idh-nc
Intrusion Detection Honeypot running NetCat in a bash script

I needed a tool to watch for potential internal attacks and easy to deply.

Goals:
1. The device needed easy to deploy
2. Needed to detect connections to open ports
3. small and hideable, that could be left onsite.

What I created was a BASH, Bourne Again Shell not Shell, to monitor connection traffic to a device that looked like a user's workstation on the netowrk.
I used [Chris Sanderers Intursion Detection Honeypot book](https://amzn.to/4eVSe4d) *amazon affiliate link, I earn from qualifying purchases.* and [his sample script](https://github.com/chrissanders/idh) as a starting point.

This version was designed and running on Debian 12.

![](header.png)

## Installation

Debian Linux:

Install the script under /opt/honeypot

```sh
chmod 755 /opt/honeypot/honeypot.sh
mkdir /var/log/honeypot
```
Follow steps in ``firewall_monitoring`` for iptables to montior all inbound connections

If autostarting add ``idh-nc.servce`` to /etc/systemd/system/
```sh 
systemctl enable idh-nc.service
```

## Usage example

```sh
./honeypots.net
tail -f /var/log/honeypots
```


## Release History
* 0.0.1
    * Work in progress

## Meta

Chris J – [@rattis](https://twitter.com/rattis) 

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/crattis/idh-nc](https://github.com/crattis/idh-nc)

## Contributing

1. Fork it (<https://github.com/yourname/yourproject/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request

<!-- Markdown link & img dfn's -->
[npm-image]: https://img.shields.io/npm/v/datadog-metrics.svg?style=flat-square
[npm-url]: https://npmjs.org/package/datadog-metrics
[npm-downloads]: https://img.shields.io/npm/dm/datadog-metrics.svg?style=flat-square
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[wiki]: https://github.com/yourname/yourproject/wiki
