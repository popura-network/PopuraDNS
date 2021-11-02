coredns in containers
=====================

Pull the image from docker hub:

    docker pull zhoreeq/coredns

or build the image from source:

    docker build -t coredns .

Run with a default config:

    docker run -dt --name=coredns --restart=unless-stopped --ip=172.17.0.2 --ip6=300:49df:7fbd:1987::100 coredns 

Run with a custom config and a custom zone file:
    
    docker run -it -v /home/user/CustomConfig:/Corefile -v /home/user/custom.zonefile:/custom.zonefile coredns

## Yggdrasil support

To enable Yggdrasil's IPv6 in Docker containers read [this](https://docs.docker.com/config/daemon/ipv6/)
