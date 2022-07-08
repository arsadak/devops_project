FROM centos:8
MAINTAINER khan.arshadli91@gmail.com
RUN yum install httpd -y \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page280/sungla.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip sungla.zip
RUN cp -rvf html/* .
RUN rm -rf html sungla.zip
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
