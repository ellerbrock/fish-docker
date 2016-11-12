FROM alpine

MAINTAINER Maik Ellerbrock (github.com/ellerbrock)

ENV CONTAINER_VERSION 0.0.2
ENV CONTAINER_NAME frapsoft/fish
ENV CONTAINER_REPO https://github.com/ellerbrock/fish-docker

RUN apk update && \
    apk add --no-cache fish && \
    rm -f /tmp/* /etc/apk/cache/*

RUN sed -i -e "s/bin\/ash/usr\/bin\/fish/" /etc/passwd

ENV SHELL /usr/bin/fish

CMD ["fish", "--version"]
