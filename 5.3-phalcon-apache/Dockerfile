FROM 16nsk/php:5.3-apache

MAINTAINER Gabriel Ignisca <gabriel@designjunkie.com>

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /usr/local/src

# We install apc because it's the best cache for 5.3 even now. 90% of any projects have some benefits, if not, fix yours or fork this and rebuild.

RUN printf "\n" | pecl install -f apc \
    && echo "extension=apc.so" >> /usr/local/lib/php.ini
    
RUN apt-get update \
    && apt-get install -y gcc libpcre3-dev git

# replacing autoconf as phalcon has issues with this one

RUN apt-get purge -y autoconf2.13 \
  && apt-get install -y autoconf

RUN git clone -b phalcon-v1.3.4 https://github.com/phalcon/cphalcon.git

WORKDIR /usr/local/src/cphalcon/build

RUN ./install \
    && echo "extension=phalcon.so" >> /usr/local/lib/php.ini

# Where now to?
