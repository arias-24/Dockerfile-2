FROM ubuntu:latest

ENV DEBIAN_FRONTEND = noninteractive

RUN apt update && apt install -y apache2 && apt install -y php libapache2-mod-php && apt clean 

COPY index.php /var/www/html

RUN rm /var/www/html/index.html

EXPOSE 80

CMD [ "apache2ctl","-D","FOREGROUND"]