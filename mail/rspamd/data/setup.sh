#!/bin/bash

set -ex
# For Alpine Linux:
#echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
#apk add --no-cache rspamd rspamd-controller tzdata

apt-key adv --fetch-keys http://rspamd.com/apt-stable/gpg.key
echo "deb http://rspamd.com/apt-stable/ jessie main" > /etc/apt/sources.list.d/rspamd.list
apt-get update
apt-get install -y rspamd ca-certificates
apt-get clean
rm -rf /var/lib/apt/lists/*

cp /tmp/entry.sh /entry.sh
cp /usr/share/zoneinfo/${TZ} /etc/localtime

mkdir /run/rspamd
#chown rspamd:rspamd /run/rspamd
chown _rspamd:_rspamd /run/rspamd
