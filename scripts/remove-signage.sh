#!/bin/bash

killall chromium-browser

sudo rm -rf /var/www/html/signage
sudo apt-get purge apache2 cec-utils --yes
