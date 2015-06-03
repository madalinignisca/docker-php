FROM php:5.3-apache

MAINTAINER Gabriel Ignisca <gabriel@designjunkie.com>

# We need back the php sources to build other image variants with php extensions

RUN set -x \
  && apt-get update && apt-get install -y autoconf2.13 curl && rm -r /var/lib/apt/lists/* \
  && curl -SL "http://php.net/get/php-$PHP_VERSION.tar.bz2/from/this/mirror" -o php.tar.bz2 \
  && curl -SL "http://php.net/get/php-$PHP_VERSION.tar.bz2.asc/from/this/mirror" -o php.tar.bz2.asc \
  && gpg --verify php.tar.bz2.asc \
  && mkdir -p /usr/src/php \
  && tar -xvf php.tar.bz2 -C /usr/src/php --strip-components=1 \
  && rm php.tar.bz2* \
  && cd /usr/src/php \
  && ./buildconf --force \
  && ./configure --disable-cgi --with-mysql --with-mysqli --with-pdo-mysql

# We are now back with php sources as should to build additional extensions. The image will be a bit huge, but it's not a problem when we need to support old applications.
