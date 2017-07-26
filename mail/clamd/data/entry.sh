#!/bin/bash
trap "kill 0" SIGINT

TZ=${TZ:"Europe/Berlin"}
cp /usr/share/zoneinfo/${TZ} /etc/localtime

touch /var/log/clamav/clamd.log /var/log/clamav/freshclam.log
chown -R clamav:clamav /var/log/clamav/

freshclam -d &
clamd &

tail -f /var/log/clamav/clamd.log /var/log/clamav/freshclam.log
