FROM centos:latest

RUN yum install -y --disablerepo=appstream httpd zip unzip

ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN rm -f photogenic.zip

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80