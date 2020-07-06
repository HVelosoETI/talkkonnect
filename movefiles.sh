#!/bin/bash

mkdir -p /opt/talkkonnect
cp -rvp ./soundfiles /opt/talkkonnect/soundfiles
cp -rvp $GOBIN/talkkonnect /opt/talkkonnect/talkkonnect
mkdir /etc/talkkonnect
cp -rvp talkkonnect.xml /etc/talkkonnect/
sed -i '/^exit.*/i su\ talkkonnect\ -c\ \"screen\ -dmS\ talkkonnect-radio\ \/opt\/talkkonnect\/talkkonnect-run \&\"' /etc/rc.local

chown -hR talkkonnect: /etc/talkkonnect
chown -hR talkkonnect: /opt/talkkonnect