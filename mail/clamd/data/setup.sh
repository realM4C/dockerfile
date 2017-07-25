#!/bin/bash
cp /tmp/entry.sh /entry.sh

# pre-download defintions
set -ex
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
