FROM alpine:3

RUN apk add --no-cache \
    ffmpeg \
    bash \
 && adduser -D -u 10001 app

USER app
WORKDIR /home/app

ENTRYPOINT ["bash"]
