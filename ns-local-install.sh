#!/bin/bash
#
#thanks to @SandraK82
#fork from https://github.com/SandraK82/deploy-ns-local-raspi
#
#

apt update && apt upgrade -y
apt install curl rsync locate -y

useradd scout
cd /opt/
apt update && apt upgrade -y
apt install sudo git rsync curl software-properties-common -y
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
#curl -sL https://deb.nodesource.com/setup_9.x | sudo bash - #makes trouble
apt install nodejs -y
apt install mongodb-server -y
systemctl enable mongodb.service
systemctl status mongodb.service

git clone https://github.com/viderehh/cgm-remote-monitor.git
cd cgm-remote-monitor/
./setup.sh
#
curl -o https://github.com/viderehh/deploy-nightscout-local-debain/blob/master/nightscout
mv nightscout /etc/init.d/nightscout
chmod +x /etc/init.d/nightscout
mkdir /opt/cgm-remote-monitor/tmp
touch /opt/cgm-remote-monitor/tmp/cacheBusterToken

echo "edit /opt/start-nightscout.sh"
echo "change CUSTOM_TITLE=mysitename_without_space"
echo "and API_SECRET=my_24_characters_or_more_password"
echo ""
echo "after that"
echo "/etc/init.d/nightscout start"
echo "todo: create mongodb user for security resons"
echo "maybe you want to change the bind_ip in /etc/mongodb.conf"

