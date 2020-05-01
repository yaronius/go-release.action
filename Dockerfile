FROM golang:1.14-alpine

RUN apk add --no-cache curl jq git build-base

ENV GO111MODULE on

ADD entrypoint.sh /entrypoint.sh
ADD build.sh /build.sh
ENTRYPOINT ["/entrypoint.sh"]
