FROM mariadb:latest
LABEL maintainer "AMSSN <info@amssn.eu>"

ENV TZ='Europe/Berlin'
ENV MYSQL_DATABASE='mailsystem'

# Patch for the right TimeZone
CMD cp /usr/share/zoneinfo/${TZ} /etc/localtime

ADD data /docker-entrypoint-initdb.d/

# port provision
EXPOSE 3306/tcp

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]
