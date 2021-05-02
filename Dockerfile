# Multi Version Beta
# By Dviih
# dviih.technology/multiversion
FROM busybox:latest
MAINTAINER Dviih, <dviih@dviih.email>

ADD https://raw.githubusercontent.com/Dviih/multiversion/java8/java8.tar.gz /java8.tar.gz
ADD https://raw.githubusercontent.com/Dviih/multiversion/main/entrypoint.sh /entrypoint.sh

RUN tar -xvf java8.tar.gz && rm java8.tar.gz
RUN adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

CMD ["/bin/sh", "/entrypoint.sh"]
