#!/bin/bash

echo 'standby 0' | /usr/bin/cec-client -s -d 1
killall chromium-browser

cd /var/www/html/signage
sudo git pull
/usr/bin/chromium-browser --noerrordialogs --disable-infobars --incognito --no-sandbox --kiosk http://localhost/signage &
echo 'on 0' | /usr/bin/cec-client -s -d 1
