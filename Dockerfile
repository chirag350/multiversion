# Multi Version Beta
# By Dviih
# dviih.technology/multiversion
FROM alpine:latest
MAINTAINER Dviih, <dviih@dviih.email>

ADD https://raw.githubusercontent.com/Dviih/multiversion/main/entrypoint.sh /entrypoint.sh

RUN apk update && apk add openjdk8
RUN adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

RUN echo "eula=true" > eula.txt

CMD ["/bin/sh", "/entrypoint.sh"]
