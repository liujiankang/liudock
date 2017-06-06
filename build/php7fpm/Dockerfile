FROM ubunt16base:liu1
MAINTAINER liujiankang1@qq.com
ADD etc/apt/sources.list /etc/apt/sources.list
ENV REFRESHED_AT 2017-04-02
RUN apt-get update
RUN apt-get -y install php7.0-fpm php7.0-mysql php7.0-mcrypt php7.0-zip openssl php7.0-xml php7.0-curl
RUN apt-get -y install php7.0-gd php7.0-mbstring php-xdebug
ADD etc/php/7.0/fpm/php-fpm.conf /etc/php/7.0/fpm/php-fpm.conf
ADD etc/php/7.0/fpm/pool.d/www.conf /etc/php/7.0/fpm/pool.d/www.conf
ADD etc/php/7.0/mods-available /etc/php/7.0/mods-available
EXPOSE 9997
EXPOSE 9000
CMD php-fpm7.0
