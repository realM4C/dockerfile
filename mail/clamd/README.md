# mail-clamd
ClamAV Subcontainer on AlpineLinux for HA-Mail-Cluster

[![](https://images.microbadger.com/badges/image/amssn/mail-clamd.svg)](https://microbadger.com/images/amssn/mail-clamd "Get your own image badge on microbadger.com")

[![](https://images.microbadger.com/badges/version/amssn/mail-clamd.svg)](https://microbadger.com/images/amssn/mail-clamd "Get your own version badge on microbadger.com")

# Usage:

docker run -d --name=mail-clamd mail-clamd

Use your own config directory with: 

docker run -d --name=mail-clamd --volume=/path-to-configs/:/etc/clamav/ mail-clamd


Use your own log directory with: 

docker run -d --name=mail-clamd --volume=/path-to-logs/:/var/log/clamav/ mail-clamd
