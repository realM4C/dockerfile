FROM alpine:edge
LABEL maintainer "AMSSN <info@amssn.eu>"
ENV TZ='Europe/Berlin'

ADD data /tmp/
RUN chmod +x /tmp/*.sh ; /tmp/setup.sh

# port provision
EXPOSE 11333/tcp

# av daemon bootstrapping
CMD ["/entry.sh"]
