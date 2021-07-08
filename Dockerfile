FROM centos:latest
RUN yum install -y httpd \
    zip \
    unzip
ADD https://cdn-101.anonfiles.com/T3Q9a85dub/427a1c63-1625726512/srhu.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip srhu.zip
RUN cp -rvf srhu/* .
RUN rm -rf srhu srhu.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

