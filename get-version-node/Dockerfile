FROM alpine:latest

ARG VERSION=v4.42.1
ARG BINARY=yq_linux_amd64

RUN echo "using yq $VERSION $BINARY" > /etc/stuff

RUN apk update && \
    apk add curl

RUN curl -sL https://github.com/mikefarah/yq/releases/download/${VERSION}/${BINARY} -o /usr/bin/yq && \
    chmod +x /usr/bin/yq

COPY run.sh /run.sh

ENTRYPOINT [ "/run.sh" ]
