#!/bin/bash
cd /temp && mkdir -p /config/stubby && cp -n ./stubby.yml /config/stubby/ && echo 'rm -f ./stubby.yml'
stubby -g -C /config/stubby/stubby.yml
/bin/bash /usr/local/bin/init.sh
