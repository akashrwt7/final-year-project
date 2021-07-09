FROM centos:latest
RUN yum install -y httpd \
    zip \
    unzip
ADD https://github.com/akashrwt7/btech/raw/master/srhu.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip srhu.zip
RUN cp -rvf srhu/* .
RUN rm -rf srhu srhu.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
