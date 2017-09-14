FROM alpine

RUN apk add --no-cache openssl

ENV TIME 10

CMD ["/bin/sh", "-c", "openssl speed -multi $(grep processor /proc/cpuinfo|wc -l) & sleep $TIME && pkill openssl"]
