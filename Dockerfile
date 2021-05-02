# Multi Version Beta
# By Dviih
# dviih.technology/multiversion
FROM busybox:latest
MAINTAINER Dviih, <dviih@dviih.email>

ADD https://github.com/Dviih/multiversion/blob/java8/java8.tar.gz /java
ADD https://github.com/Dviih/multiversion/blob/main/entrypoint.sh /entrypoint.sh

RUN adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

CMD ["/bin/bash", "/entrypoint.sh"]
