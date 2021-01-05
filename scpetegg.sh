#!/bin/bash

apt -y update
apt -y --no-install-recommends install curl unzip lib32gcc1 ca-certificates wget fonts-liberation libappindicator3-1 libasound2 libatk-bridge2.0-0 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgbm1 libgcc1 libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 lsb-release xdg-utils


mkdir -p /mnt/server/.netinstall
cd /mnt/server/

chown -R root:root /mnt
export HOME=/mnt/server

#wget https://dot.net/v1/dotnet-install.sh
#chmod +x dotnet-install.sh
#./dotnet-install.sh -i /mnt/server/.netinstall

curl -sL https://deb.nodesource.com/setup_14.x | bash -
apt -y update
apt install -y nodejs

wget -O index.js https://gist.githubusercontent.com/VirtualBrightPlayz/b408f789c8a441ce4ce15981fc162aee/raw/c946507f5134be8c1bbc275836b12e3921685d9f/index.js
npm install puppeteer
cd /mnt/server
node .
unzip -o scp-et-linux-server.zip

wget -O console.zip https://api.virtualwebsite.net/files/console.zip
unzip -o console.zip

wget -O plugin.zip https://api.virtualwebsite.net/files/PteroPlugin.zip
unzip -o plugin.zip