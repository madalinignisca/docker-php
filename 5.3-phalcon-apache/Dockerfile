FROM 16nsk/php:5.3-apache

MAINTAINER Gabriel Ignisca <gabriel@designjunkie.com>

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /usr/local/src

RUN printf "\n" | pecl install -f apc \
    && echo "extension=apc.so" > /usr/local/etc/php/conf.d/ext-apc.ini \
    && apt-get update
    && apt-get install -y php5-dev php5-mysql gcc libpcre3-dev git \
    && git clone -b phalcon-v1.3.4 https://github.com/phalcon/cphalcon.git

WORKDIR /usr/local/src/cphalcon

RUN ./install \
    && echo "extension=phalcon.so" > /usr/local/etc/php/conf.d/ext-phalcon.ini
