# Asterisk 13 Certified LTS on Debian Jessie
Asterisk on Debian without dahdi support

[![](https://images.microbadger.com/badges/image/amssn/asterisk:13-cert-debian.svg)](https://microbadger.com/images/amssn/asterisk:13-cert-debian "Get your own image badge on microbadger.com")

[![](https://images.microbadger.com/badges/version/amssn/asterisk:13-cert-debian.svg)](https://microbadger.com/images/amssn/asterisk:13-cert-debian "Get your own version badge on microbadger.com")

# Usage:
docker run -d --restart=always --name=asterisk --publish=5060:5060/udp --publish=5060:5060/tcp \ 
--volume=[to-your-config-direcotry]:/etc/asterisk/ amssn/asterisk:13-cert-deb

You can use:
docker exec -it [name-of-asterisk-container] /usr/sbin/rasterisk
to connect to the CLI of Asterisk

# Default ENVIREMENT Variablen
- ASTERISK_UID='9009'
- ASTERISK_GID='9009'
- ASTERISK_USER='asterisk'
- ASTERISK_GROUP='asterisk'
- ASTERISK_TZ='Europe/Berlin'

# Ports:
- 5060/tcp        # SIP
- 5060/udp        # SIP
- 10000-10099/udp # SIP Forwarded Ports

# Volume:
- /etc/asterisk
- /var/spool/asterisk
- /var/lib/asterisk
- /var/log/asterisk

# Build Log:
You can find the build Logfile at /tmp/build.log
