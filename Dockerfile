FROM php:8.1.31-fpm-alpine

COPY --from=ghcr.io/mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions @composer-2.2.25

RUN install-php-extensions amqp apcu bcmath exif gd gettext intl opcache pcntl pdo_mysql redis soap zip

COPY php.ini /usr/local/etc/php/php.ini
COPY www.conf /usr/local/etc/php-fpm.d/www.conf
