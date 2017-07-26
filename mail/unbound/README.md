# mail-unbound
Unbound Subcontainer on AlpineLinux for HA-Mail-Cluster

[![](https://images.microbadger.com/badges/image/amssn/mail-unbound.svg)](https://microbadger.com/images/amssn/mail-unbound "Get your own image badge on microbadger.com")

[![](https://images.microbadger.com/badges/version/amssn/mail-unbound.svg)](https://microbadger.com/images/amssn/mail-unbound "Get your own version badge on microbadger.com")

# Usage:

docker run -d --name=mail-unbound mail-unbound

Use your own config directory with: 

docker run -d --name=mail-unbound --volume=/path-to-configs/:/etc/clamav/ mail-unbound


Use your own log directory with: 

docker run -d --name=mail-unbound --volume=/path-to-logs/:/var/log/clamav/ mail-unbound
