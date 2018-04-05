#!/bin/bash
echo "Removing Old Theme"
rm -rf /home/vps/public_html/asset > /dev/null 2>&1 &
rm -rf /home/vps/public_html/view > /dev/null 2>&1 &
rm -rf /home/vps/public_html/tmp/* > /dev/null 2>&1 &
echo "Installing Blue Theme"
cd ~ > /dev/null 2>&1 &
mkdir KEDL > /dev/null 2>&1 &
cd KEDL
apt-get -y install zip unzip
wget https://raw.github.com/Kentemman/api/master/theme/BlueTheme.zip
unzip BlueTheme.zip
rm -f BlueTheme.zip
mv asset /home/vps/public_html > /dev/null 2>&1 &
mv view /home/vps/public_html > /dev/null 2>&1 &
echo "Enjoy using Blue Theme -KEDL"

