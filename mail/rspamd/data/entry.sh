#!/bin/sh

TZ=${TZ:-"Europe/Berlin"}
cp /usr/share/zoneinfo/${TZ} /etc/localtime

/usr/bin/rspamd -f -u rspamd -g rspamd
