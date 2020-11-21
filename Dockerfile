FROM centos:latest
MAINTAINER deepankardey12@gmail.com
RUN yum install -y httpd \
   zip\
   unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page261/lighten.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip lighten.zip
RUN cp -rvf lighten/* .
RUN rm -rf lighten lighten.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
