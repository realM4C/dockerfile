FROM alpine
LABEL maintainer "AMSSN <info@amssn.eu>"
ENV TZ="Europe/Berlin"

ADD data /tmp/
RUN apk add --no-cache clamav clamav-libunrar clamav-daemon bash curl
RUN chmod +x /tmp/*.sh ; /tmp/setup.sh

# port provision
EXPOSE 3310

# av daemon bootstrapping
CMD ["/entry.sh"]
