#!/bin/sh


# Actually run Postfix
rm -f /var/run/rsyslogd.pid
chown -R postfix: /var/spool/postfix/
/usr/lib/postfix/post-install meta_directory=/etc/postfix create-missing
/usr/lib/postfix/master &
exec rsyslogd -n
