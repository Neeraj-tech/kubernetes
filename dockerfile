FROM centos:centos7.9.2009
RUN yum update -y
RUN yum install httpd -y
COPY ./index.html /var/www/html
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
