FROM alpine

RUN apk --no-cache update && \
    apk --no-cache add \
        groff \
        less \
        py-pip && \
    pip --no-cache-dir install --upgrade awscli && \
    rm -rf /var/cache/apk/*

WORKDIR /root
ENTRYPOINT ["aws"]
