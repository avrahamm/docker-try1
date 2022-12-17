FROM phpstorm/php-56-apache-xdebug-25

RUN apt-get update \
    && apt-get -y install telnet \
    && rm -f /usr/local/etc/php/php.ini

COPY php.ini /usr/local/etc/php/php.ini

RUN touch /tmp/xdebug.log
RUN chown www-data:www-data /tmp/xdebug.log
RUN chmod 777 /tmp/xdebug.log
