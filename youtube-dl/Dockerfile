FROM alpine

RUN apk --no-cache update && \
    apk --no-cache add \
        youtube-dl && \
    rm -rf /var/cache/apk/*

WORKDIR /root
ENTRYPOINT ["youtube-dl"]
