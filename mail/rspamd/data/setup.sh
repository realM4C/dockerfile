#!/bin/bash

set -ex
apt-key adv --fetch-keys http://rspamd.com/apt-stable/gpg.key
echo "deb http://rspamd.com/apt-stable/ jessie main" > /etc/apt/sources.list.d/rspamd.list
apt-get update
apt-get install -y rspamd ca-certificates
apt-get clean
rm -rf /var/lib/apt/lists/*

cp /tmp/entry.sh /entry.sh
cp /usr/share/zoneinfo/${TZ} /etc/localtime
