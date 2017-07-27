#!/bin/sh

set -ex
echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
apk add --no-cache rspamd bash tzdata

cp /tmp/entry.sh /entry.sh
cp /usr/share/zoneinfo/${TZ} /etc/localtime

mkdir /run/rspamd
chown rspamd:rspamd /run/rspamd
