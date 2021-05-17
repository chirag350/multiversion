# MultiVersion
# By Dviih
# dviih.technology/multiversion | dviih@dviih.email
FROM alpine:latest
MAINTAINER Dviih, <dviih@dviih.email>
RUN echo "MultiVersion java9 docker image"

RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig openjdk10

RUN wget https://raw.githubusercontent.com/Dviih/multiversion/main/entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

CMD ["/bin/sh", "/entrypoint.sh"]
