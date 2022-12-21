FROM phpstorm/php-56-apache-xdebug-25

RUN apt-get update \
    && apt-get -y install telnet

RUN touch /tmp/xdebug.log \
    && chmod 777 /tmp/xdebug.log
