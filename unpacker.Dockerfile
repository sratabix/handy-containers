FROM alpine:3

RUN apk add --no-cache \
    tar \
    gzip \
    bzip2 \
    xz \
    zstd \
    unzip \
    p7zip \
 && adduser -D -u 10001 app

USER app
WORKDIR /home/app

CMD ["sh"]