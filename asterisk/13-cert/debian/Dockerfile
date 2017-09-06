FROM debian:jessie
LABEL maintainer "AMSSN <info@amssn.eu>"

ENV ASTERISK_UID='9009' \
    ASTERISK_GID='9009' \
    ASTERISK_USER='asterisk' \
    ASTERISK_GROUP='asterisk' \
    ASTERISK_TZ='Europe/Berlin'

ADD data/* /tmp/build/

RUN chmod +x /tmp/build/setup.sh /tmp/build/entry.sh /tmp/build/menuselect.sh
RUN /tmp/build/setup.sh

EXPOSE 5060/tcp 5060/udp 10000-10050/udp

VOLUME ["/etc/asterisk","/var/spool/asterisk","/var/lib/asterisk","/var/log/asterisk"]

CMD ["/entry.sh"]
