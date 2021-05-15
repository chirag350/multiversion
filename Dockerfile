# Multi Version Release
# By Dviih
# dviih.technology/multiversion | dviih@dviih.email
FROM alpine:latest
MAINTAINER Dviih, <dviih@dviih.email>

ADD https://raw.githubusercontent.com/Dviih/multiversion/main/entrypoint.sh /entrypoint.sh

RUN apk update && apk add openjdk11
RUN adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

CMD ["/bin/sh", "/entrypoint.sh"]
