FROM Ubuntu:latest

RUN apt-get -y update
 
RUN apt-get install -y apache2 curl

EXPOSE 80

WORKDIR /var/www/html

COPY index.html /var/www/html/index.html 

ENTRYPOINT ["/usr/sbin/apache2ctl"]

CMD ["-D", "FOREGROUND"]
 
 
# FROM  centos:latest
# MAINTAINER vikashashoke@gmail.com
# RUN yum install -y httpd \
#  zip\
#  unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip shine.zip
# RUN cp -rvf shine/* .
# RUN rm -rf shine shine.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80   
