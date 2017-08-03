FROM memcached:alpine
LABEL maintainer "AMSSN <info@amssn.eu>"

ENV TZ='Europe/Berlin'

# Patch for the right TimeZone
CMD apk add --no-cache tzdata ; cp /usr/share/zoneinfo/${TZ} /etc/localtime

# port provision
EXPOSE 11211/tcp

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["memcached"]
