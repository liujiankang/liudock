FROM ubuntu:16.04
MAINTAINER liujiankang1@qq.com
ADD etc/apt/sources.list /etc/apt/sources.list
ENV PATH=/tool/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV COMPOSER_CACHE_DIR=/cache/composer
RUN apt-get update
RUN apt-get -y install vim subversion git openssh-client openssh-server strace tcpdump net-tools lsof sudo
ADD cache /cache
CMD /bin/bash
