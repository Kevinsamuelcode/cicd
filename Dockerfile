FROM ubuntu:latest

RUN apt-get update && apt-get install -y --no-install-recommends apache2 zip unzip

ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
#WORKDIR /var/www/html/
#RUN unzip -q photogenic.zip && rm -f photogenic.zip
#EXPOSE 80
#CMD ["apache2ctl", "-D", "FOREGROUND"]
