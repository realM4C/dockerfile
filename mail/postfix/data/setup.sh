#!/bin/bash
set -ex

apk add --no-cache postfix postfix-mysql postfix-pcre rsyslog tzdata

cp /tmp/rsyslog.conf /etc/rsyslog.conf
cp /tmp/conf /etc/postfix

cp /tmp/entry.sh /entry.sh
cp /usr/share/zoneinfo/${TZ} /etc/localtime
