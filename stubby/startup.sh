#!/bin/bash

stubby -g -C /config/stubby.yml
/bin/bash /usr/local/bin/init.sh
