# Multi Version
# By Dviih
# dviih.technology/multiversion | dviih@dviih.email
FROM alpine:latest
MAINTAINER Dviih, <dviih@dviih.email>

RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig wget

CMD ["/bin/ash"]
