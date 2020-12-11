FROM golang:1.15-alpine

RUN apk add --no-cache curl jq git build-base

ENV GO111MODULE on

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
