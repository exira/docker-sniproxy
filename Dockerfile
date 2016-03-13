#
# Small sniproxy docker image with unblocking configurations based on alpine linux
#
# http://github.com/tenstartups/sniproxy-docker
#

FROM tenstartups/alpine:latest

MAINTAINER Marc Lennox <marc.lennox@gmail.com>

# Install packages.
RUN \
  apk --update add sniproxy && \
  rm -rf /var/cache/apk/*

# Add files.
COPY entrypoint.sh /docker-entrypoint

ENTRYPOINT ["/docker-entrypoint"]
