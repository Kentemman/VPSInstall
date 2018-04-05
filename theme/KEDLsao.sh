#!/bin/bash
echo "Removing Old Theme"
rm -rf /home/vps/public_html/asset > /dev/null 2>&1 &
rm -rf /home/vps/public_html/view > /dev/null 2>&1 &
rm -rf /home/vps/public_html/tmp/* > /dev/null 2>&1 &
echo "Installing Theme"
cd ~ > /dev/null 2>&1 &
mkdir KEDL > /dev/null 2>&1 &
cd KEDL
apt-get -y install zip unzip
wget https://raw.githubusercontent.com/Kentemman/api/master/theme/sao.zip
unzip sao.zip
rm -f sao.zip
mv asset /home/vps/public_html > /dev/null 2>&1 &
mv view /home/vps/public_html > /dev/null 2>&1 &
echo "Enjoy using My Theme -KEDL Theme Maker"

