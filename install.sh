#!/bin/bash
cp coredns /usr/local/bin/
mkdir -p /etc/coredns
cp Corefile.example /etc/coredns/Corefile
cp contrib/coredns.service /etc/systemd/system/
systemctl enable --now coredns.service

echo "Configure your system DNS settings to server '127.0.0.1'"
