FROM alpine

MAINTAINER Maik Ellerbrock (github.com/ellerbrock)

ENV CONTAINER_VERSION 0.0.1
ENV CONTAINER_NAME frapsoft/fish
ENV CONTAINER_REPO https://github.com/ellerbrock/fish-docker

RUN apk update && \
    apk add --no-cache fish

ENV SHELL /bin/fish

ENTRYPOINT ["fish"]
CMD ["--version"]
