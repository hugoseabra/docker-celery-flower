# Flower
#
# VERSION 0.1

FROM mher/flower
MAINTAINER Hugo Seabra

COPY ./entrypoint.sh /usr/local/.

# Make sure we expose port 5555 so that we can connect to it
EXPOSE 5555

# Running flower
ENTRYPOINT ["/usr/local/entrypoint.sh"]
