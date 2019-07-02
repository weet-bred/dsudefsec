#!/bin/bash
# replace the wrong ips in the config file with the right one for the system - nasty one-liner mode
sed -i "s/192.168.56.126/$(ip ad | grep -w  'inet' | grep -v 127.0.0.1 | awk '{print $2}' | sed 's/\/24//g' | grep 192)/g" /var/www/html/mediawiki/LocalSettings.php
#If this doesn't work, fix the 'grep 192' bit at the end
