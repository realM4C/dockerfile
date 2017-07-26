FROM alpine
LABEL maintainer "AMSSN <info@amssn.eu>"

ADD data /tmp/
RUN apk add --no-cache unbound bash curl
RUN chmod +x /tmp/*.sh ; /tmp/setup.sh

# port provision
EXPOSE 53/udp 53/tcp

# av daemon bootstrapping
CMD ["/entry.sh"]
