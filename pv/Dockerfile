FROM alpine

RUN apk --no-cache update && \
    apk --no-cache add \
        pv && \
    rm -rf /var/cache/apk/*

WORKDIR /root
COPY ./entrypoint.sh ./entrypoint.sh
ENTRYPOINT ["sh", "entrypoint.sh"]
