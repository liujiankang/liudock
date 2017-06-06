FROM ubunt16base:liu1
MAINTAINER liujiankang1@qq.com
ADD etc/apt/sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install nginx
ADD etc/nginx/nginx.conf /etc/nginx/nginx.conf
ADD etc/nginx/conf.d /etc/nginx/conf.d
EXPOSE 80
CMD nginx
