#!/bin/bash

### This script install cloudflared. ###

pacman -S wget glibc

cd /tmp \
    && wget https://bin.equinox.io/a/8irBSv8TH5C/cloudflared-2020.8.2-linux-amd64.tar.gz \
    && tar xvzf *.gz \
    && mv cloudflared /bin/

cloudflared --config /config/config.yml
