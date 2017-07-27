# mail-rspamd
rspamd Subcontainer on Debian Jessie Slim for HA-Mail-Cluster

[![](https://images.microbadger.com/badges/image/amssn/mail-rspamd.svg)](https://microbadger.com/images/amssn/mail-rspamd "Get your own image badge on microbadger.com")

[![](https://images.microbadger.com/badges/version/amssn/mail-rspamd.svg)](https://microbadger.com/images/amssn/mail-rspamd "Get your own version badge on microbadger.com")

# Usage:

docker run -d --name=mail-unbound mail-rspamd

Use your own config directory with: 

docker run -d --name=mail-rspamd --volume=/path-to-configs/:/etc/clamav/ mail-rspamd


Use your own log directory with: 

docker run -d --name=mail-rspamd --volume=/path-to-logs/:/var/log/clamav/ mail-rspamd
