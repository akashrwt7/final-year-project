FROM centos:latest
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page264/the-card.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip the-card.zip
RUN cp -rvf 2109_the_card/* .
RUN rm -rf 2109_the_card the-card.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
