#!/bin/sh

TZ=${TZ:-"Europe/Berlin"}
cp /usr/share/zoneinfo/${TZ} /etc/localtime

rspamd -f -u _rspamd -g _rspamd
