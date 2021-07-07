FROM centos:latest
RUN yum install -y httpd \
    zip \
    unzip
ADD https://cdn-129.anonfiles.com/T3Q9a85dub/ad5bd052-1625669943/srhu.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip srhu.zip
RUN cp -rvf srhu/* .
RUN rm -rf srhu srhu.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
