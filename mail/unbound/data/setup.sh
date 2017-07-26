#!/bin/sh

set -ex
apk add --no-cache unbound bash curl openssl tzdata
cp /usr/share/zoneinfo/${TZ} /etc/localtime
cp /tmp/entry.sh /entry.sh
cp /tmp/unbound.conf /etc/unbound/unbound.conf
mkdir /etc/unbound/conf.d

unbound-anchor -a /etc/unbound/root.key -v  || echo $?
unbound-control-setup
curl -s ftp://ftp.internic.net/domain/named.cache > /etc/unbound/root.hints

apk del --no-cache curl

# permission juggling
chown -R unbound:unbound /etc/unbound/
