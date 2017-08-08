#!/bin/bash

set -ex

apk add --no-cache bash postfix postfix-mysql postfix-pcre rsyslog tzdata

cp /tmp/entry.sh /entry.sh
cp /usr/share/zoneinfo/${TZ} /etc/localtime
