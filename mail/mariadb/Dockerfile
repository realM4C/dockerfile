FROM mariadb:latest
LABEL maintainer "AMSSN <info@amssn.eu>"

ENV TZ='Europe/Berlin'
ENV MYSQL_DATABASE='mailsystem'
ENV MYSQL_USER='mailsystem'
ENV MYSQL_PASSWORD='nai7aawei1usie0sahph1arairaiWie1'

# Patch for the right TimeZone
CMD cp /usr/share/zoneinfo/${TZ} /etc/localtime

ADD data /docker-entrypoint-initdb.d/

# port provision
EXPOSE 3306/tcp

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]
