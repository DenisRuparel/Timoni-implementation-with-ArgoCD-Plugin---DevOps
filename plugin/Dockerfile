FROM alpine:3.19

ARG TIMONI_VERSION=0.22.0

RUN apk add --no-cache \
    curl \
    tar \
    bash \
    git

RUN curl -sSL \
    https://github.com/stefanprodan/timoni/releases/download/v${TIMONI_VERSION}/timoni_${TIMONI_VERSION}_linux_amd64.tar.gz \
    | tar -xz -C /usr/local/bin timoni \
    && chmod +x /usr/local/bin/timoni

RUN timoni version

USER 999
