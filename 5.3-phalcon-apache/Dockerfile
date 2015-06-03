FROM 16nsk/php:5.3-apache

MAINTAINER Gabriel Ignisca <gabriel@designjunkie.com>

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /usr/local/src

# We install apc because it's the best cache for 5.3 even now. 90% of any projects have some benefits, if not, fix yours or fork this and rebuild.

RUN printf "\n" | pecl install -f apc \
    && echo "extension=apc.so" > /usr/local/etc/php/conf.d/ext-apc.ini \
    && apt-get update
    && apt-get install -y php5-dev php5-mysql gcc libpcre3-dev git \
    && git clone -b phalcon-v1.3.4 https://github.com/phalcon/cphalcon.git \
    && cd cphalcon \
    && ./install \
    && echo "extension=phalcon.so" > /usr/local/etc/php/conf.d/ext-phalcon.ini

# Where now to?
