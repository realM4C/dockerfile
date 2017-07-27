#!/bin/sh

set -ex
apk add --no-cache tzdata

#cp /tmp/redis.conf /usr/local/etc/redis/redis.conf
cp /usr/share/zoneinfo/${TZ} /etc/localtime
