FROM alpine
LABEL maintainer "AMSSN <info@amssn.eu>"

ADD data /tmp/
RUN chmod +x /tmp/data/*.sh ; /tmp/data/setup.sh

# port provision
EXPOSE 3310

# av daemon bootstrapping
CMD ["/entry.sh"]
