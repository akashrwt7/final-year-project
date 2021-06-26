FROM centos:latest
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page268/earth.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip earth.zip
RUN cp -rvf earth/* .
RUN rm -rf earth earth.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
