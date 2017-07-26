#!/bin/sh

# pre-download defintions
set -ex
apk add --no-cache unbound bash curl openssl tzdata
cp /usr/share/zoneinfo/${TZ} /etc/localtime
cp /tmp/entry.sh /entry.sh
/tmp/dl_files.sh
apk del --no-cache curl

# permission juggling
mkdir -p /run/clamav
chown clamav:clamav /run/clamav
chmod 750 /run/clamav

# av configuration update
sed -i 's/^Foreground .*$/Foreground true/g' /etc/clamav/clamd.conf
echo "TCPSocket 3310" >> /etc/clamav/clamd.conf
sed -i 's/^Foreground .*$/Foreground true/g' /etc/clamav/freshclam.conf
