#!/bin/bash

sudo apt-get install apache2 cec-utils --yes
sudo git clone http://github.com/pragtec/digital-signage.git /var/www/html/signage
/usr/bin/chromium-browser --noerrordialogs --disable-infobars --incognito --no-sandbox --kiosk http://localhost/signage &

