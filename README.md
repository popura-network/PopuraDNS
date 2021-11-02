# PopuraDNS

PopuraDNS is a simple DNS server with decentralized domain names support.

PopuraDNS can:

- Secure all your regular DNS queries with [DNS-over-TLS](https://en.wikipedia.org/wiki/DNS_over_TLS)
- Resolve the [meshname protocol](https://github.com/zhoreeq/meshname) domains
- Resolve [Alfis blockchain](https://github.com/Revertron/Alfis) domains
- Resolve [OpenNIC alternative DNS root](https://www.opennic.org/) domains
- Can work as an authoritative server for your domains

## Usage

Building from source (requires Golang >=1.17):

    git clone https://github.com/popura-network/PopuraDNS
    cd PopuraDNS
    ./build.sh

Run PopuraDNS on port 53535 with a default config file:

    ./coredns -p 53535 -conf ./Corefile

See the `contrib` directory for systemd and openrc example files.

For Docker tips, see `docs/DOCKER_TIPS.md`

## Configuration

PopuraDNS is a special build of CoreDNS.
See `Corefile` for example PopuraDNS configuration file.

To list all available plugins, run `./coredns -plugins`

For more information read the [CoreDNS docs](https://coredns.io/manual/toc/#configuration).
