#Version 0.0.1
FROM ubuntu
MAINTAINER Maxim Finozhenok <finojenok.m@gmail.com>
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Metallica Metallica Metallica' \
	>/usr/share/nginx/html/index.html
EXPOSE 80
