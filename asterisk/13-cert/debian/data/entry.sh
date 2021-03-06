#!/bin/bash
function update_ownership(){
	chown -R ${ASTERISK_USER}:${ASTERISK_GROUP} /etc/asterisk
	chown -R ${ASTERISK_USER}:${ASTERISK_GROUP} /var/{lib,log,run,spool}/asterisk
	chown -R ${ASTERISK_USER}:${ASTERISK_GROUP} /usr/lib/asterisk
	#chown -R ${ASTERISK_USER}:${ASTERISK_GROUP} /dev/zap
	#chown -R ${ASTERISK_USER}:${ASTERISK_GROUP} /dev/dahdi
	#chmod -R u=rwX,g=rX,o= /var/lib/asterisk
	#chmod -R u=rwX,g=rX,o= /var/log/asterisk
	#chmod -R u=rwX,g=rX,o= /var/run/asterisk
	#chmod -R u=rwX,g=rX,o= /var/spool/asterisk
	#chmod -R u=rwX,g=rX,o= /usr/lib/asterisk
	#chmod -R u=rw,g=r,o= /etc/asterisk
}
echo -n "$(date): "
update_ownership
if [ "x${1}" = "x" ]; then
	# This works if CMD is empty or not specified in Dockerfile
	exec /usr/sbin/asterisk -vvvdddfTin -U ${ASTERISK_USER} -G ${ASTERISK_GROUP}
	#exec /usr/sbin/asterisk -vvvdddfTin
else
	exec $@
fi
