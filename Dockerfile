# MultiVersion Patch | dviih.technology/multiversion | dviih@dviih.email

FROM openjdk:12-jdk-alpine
MAINTAINER Dviih, <dviih@dviih.email>

RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig

RUN wget https://raw.githubusercontent.com/Dviih/multiversion/main/entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

CMD ["/bin/sh", "/entrypoint.sh"]
