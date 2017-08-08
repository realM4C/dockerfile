FROM debian:jessie-slim
LABEL maintainer "AMSSN <info@amssn.eu>"
ENV TZ='Europe/Berlin'

ADD data /tmp/
RUN chmod +x /tmp/*.sh ; /tmp/setup.sh

# port provision SMTP SMTPS ESMTP
EXPOSE 25/tcp 465/tcp 587/tcp

# av daemon bootstrapping
CMD ["/entry.sh"]
