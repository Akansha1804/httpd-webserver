# This dockerfile is for httpd webserver

FROM centos:7

RUN yum -y update
RUN yum -y install httpd -y

COPY ./index.html /var/www/html/index.html

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
