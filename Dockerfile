FROM ubuntu

RUN apt-get update
RUN apt-get install apache2

COPY ./vhost.conf /etc/apache2/sites-enabled/000-default.conf
COPY ./ /var/www/public_html/
COPY ./index.html /var/www/html/index.html

EXPOSE 80 8443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
